#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <tuple>
#include <vector>

#define TableTemplate int, std::string, float, char



//===========+ TuplePrinter +===========+//
template <typename Tuple, unsigned N, unsigned Size>
struct TuplePrinter {
    static void print(std::ostream& os, const Tuple& tuple) {
        os << std::get<N>(tuple) << ", ";
        TuplePrinter<Tuple, N + 1, Size>::print(os, tuple);

        /*
        if constexpr(N < Size) {
            TuplePrinter<Tuple, N + 1, Size>::print(os, tuple);
        }
        */
    }
};

template <typename Tuple, unsigned N>
struct TuplePrinter<Tuple, N, N> {
    static void print(std::ostream& os, const Tuple& tuple) {
        os << std::get<N>(tuple);
    }
};

template <typename Tuple, unsigned N>
struct TuplePrinter<Tuple, N, 0> {
    static void print(std::ostream& os, const Tuple& tuple) {}
};

template <typename... Args>
std::ostream& operator<<(std::ostream& os, const std::tuple<Args...>& tuple) {
    TuplePrinter<decltype(tuple), 0, sizeof...(Args) - 1>::print(os, tuple);
    return os;
};



//===========+ TypeHandler +===========+//
template <typename T>
struct TypeHandler {
    static void process(T& value, const std::string& string) {
        std::istringstream is(string);
        is >> value;
    }
};

template <>
struct TypeHandler<std::string> {
    static void process(std::string& value, const std::string& string) {
        value = string;
    }
};



//===========+ TuplePlaceholder +===========+//
template <typename Tuple, typename Vector, unsigned N, unsigned Size>
struct TuplePlaceholder {
    static void add(Tuple& tuple, const Vector& vector) {
        using ElementType = typename std::tuple_element<N, Tuple>::type;
        ElementType res;

        TypeHandler<ElementType>::process(res, vector[N]);
        std::get<N>(tuple) = res;
        TuplePlaceholder<Tuple, Vector, N + 1, Size>::add(tuple, vector);
    }
};

template <typename Tuple, typename Vector, unsigned N>
struct TuplePlaceholder<Tuple, Vector, N, N> {
    static void add(Tuple& tuple, const Vector& vector) {
        using ElementType = typename std::tuple_element<N, Tuple>::type;
        ElementType res;

        TypeHandler<ElementType>::process(res, vector[N]);
        std::get<N>(tuple) = res;
    }
};

template <typename Tuple, typename Vector, unsigned N>
struct TuplePlaceholder<Tuple, Vector, N, 0> {
    static void add(Tuple& tuple, const Vector& vector) {}
};



//===========+ CsvParser +===========+//
template <typename... Args>
class CsvParser {
    using TupleType = std::tuple<Args...>;

public:
    CsvParser(std::istream& input, const std::size_t skip_lines = 0,
    const char row_delim = '\n', const char col_delim = ',', const char escape_symbol = '"') :
    _input(input), _row_delim(row_delim), _col_delim(col_delim), _escape_symbol(escape_symbol) {
        std::string dummy;
        for (int i = 0; i < skip_lines; i++) {
            std::getline(input, dummy, row_delim);
        }
    }

    class Iterator {
    public:
        Iterator(std::istream* input, const char row_delim, const char col_delim, const char escape_symbol) :
        _input(input), _row_delim(row_delim), _col_delim(col_delim), _escape_symbol(escape_symbol) {
            ++(*this);
        }

        Iterator() : _input(nullptr) {}

        TupleType operator*() const {
            return _cur_tuple;
        }

        Iterator& operator++() {
            if (_input && !_input->eof()) {
                std::string line;
                if (std::getline(*_input, line, _row_delim)) {
                    ++_cur_row;
                    _cur_col = 0;
                    parseLine(line);
                }
                else {
                    _input = nullptr;
                }
            }
            return *this;
        }

        bool operator!=(const Iterator& iterator) {
            return _input != iterator._input;
        }

    private:
        void parseLine(const std::string& line) {
            std::vector<std::string> columns_per_row;
            std::istringstream       is(line);
            std::string              col;

            bool escape_flag = false;
            std::size_t size_line = line.size();
            for (int i = 0; i < size_line; ++i) {
                if (line[i] == _col_delim && !escape_flag) {
                    ++_cur_col;
                    columns_per_row.push_back(col);
                    col.clear();
                }
                else if (line[i] == _escape_symbol) {
                    if (i != size_line - 1 && line[i + 1] == _escape_symbol) {
                        ++i;
                        col += _escape_symbol;
                    }
                    else if (!escape_flag) {
                        escape_flag = true;
                    }
                    else if (escape_flag) {
                        escape_flag = false;
                    }
                }
                else {
                    col += line[i];
                }
            }
            columns_per_row.push_back(col);

            TuplePlaceholder<TupleType, std::vector<std::string>, 0, sizeof...(Args) - 1>::add(_cur_tuple, columns_per_row);
        }

        std::istream* _input;
        char          _col_delim;
        char          _escape_symbol;
        char          _row_delim;
        std::size_t   _cur_row = 0;
        std::size_t   _cur_col = 0;
        TupleType     _cur_tuple;
    };

    Iterator begin() {
        return Iterator(&_input, _row_delim, _col_delim, _escape_symbol);
    }

    Iterator end() {
        return Iterator();
    }

private:
    std::istream& _input;
    char          _row_delim;
    char          _col_delim;
    char          _escape_symbol;
};

int main(int argc, char* argv[]) {
    if (argc < 2) {
        std::cerr << "Too few arguments!" << std::endl;
        return 1;
    }

    std::ifstream file(argv[1]);
    if (!file.is_open()) {
        std::cerr << "File is not opened!" << std::endl;
        return 1;
    }

    try {
        CsvParser<TableTemplate> parser(file, 0);
        for (std::tuple<TableTemplate> rs : parser) {
            std::cout << '(' << rs << ')' << std::endl;
        }
    } catch (const std::exception& ex) {
        std::cerr << "Error: " << ex.what() << std::endl;
        return 1;
    }

    return 0;
}