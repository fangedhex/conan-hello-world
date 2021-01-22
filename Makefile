all: conan cmake
	cd build && ninja

conan: conanfile.txt
	conan install -if build --build=missing .

cmake: CMakeLists.txt
	cmake -G "Ninja" -S . -B build
