BUILD_DIR = c/build

.PHONY: build test clean check

build:
	cmake -S c -B $(BUILD_DIR)
	cmake --build $(BUILD_DIR)

test: build
	cd $(BUILD_DIR) && ctest --output-on-failure

clean:
	rm -rf $(BUILD_DIR)

check:
	cppcheck --enable=all --error-exitcode=1 c/src/