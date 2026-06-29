cmake_minimum_required(VERSION 3.10)
project(ci_c_projekt C)

set(CMAKE_C_STANDARD 11)

# Test-Binary (inkludiert src/main.c direkt)
add_executable(run_tests
    test/test_main.c
    src/main.c
)

# CTest registrieren
enable_testing()
add_test(NAME test_add COMMAND run_tests)