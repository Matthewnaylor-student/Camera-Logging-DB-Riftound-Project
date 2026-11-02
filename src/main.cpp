#include <sqlite3.h>
#include <iostream>

int main() {
    sqlite3* db = nullptr;

    if (sqlite3_open("example.db", &db) != SQLITE_OK) {
        std::cerr << "Error Message:" << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return 1;
    }

    std::cout << "SQLite version: " << sqlite3_libversion() << std::endl;
    sqlite3_close(db);
    return 0;

}
