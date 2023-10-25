#!/bin/bash

mkdir build
mkdir build/x86
mkdir build/x86_64
mkdir build/linux86
mkdir build/linux64
mkdir build/armv7
mkdir build/arm64

file="addition"

# x86
echo "Building for x86..."
i686-w64-mingw32-gcc -O3 -static-libgcc -m32 -c -Wall -Werror -fpic $file.c
i686-w64-mingw32-gcc -O3 -static-libgcc -shared -o build/x86/$file.dll $file.o
strip --strip-debug build/x86/$file.dll

# x64
echo "Building for x64..."
x86_64-w64-mingw32-gcc -O3 -static-libgcc -m64 -c -Wall -Werror -fpic $file.c
x86_64-w64-mingw32-gcc -O3 -static-libgcc -m64 -shared -o build/x86_64/$file.dll $file.o
strip --strip-debug build/x86_64/$file.dll

# Linux x86
echo "Building for Linux x86..."
x86_64-linux-gnu-gcc -O3 -m32 -c -Wall -Werror $file.c
x86_64-linux-gnu-ar rcs build/linux86/lib$file.a $file.o

# Linux x64
echo "Building for Linux x64..."
x86_64-linux-gnu-gcc -O3 -m64 -c -Wall -Werror $file.c
x86_64-linux-gnu-ar rcs build/linux64/lib$file.a $file.o

x86_64-linux-gnu-gcc -O3 -static-libgcc -m64 -c -Wall -Werror -fpic $file.c
x86_64-linux-gnu-gcc -O3 -static-libgcc -m64 -shared -o build/linux64/lib$file.so $file.o
strip --strip-debug build/linux64/lib$file.so

# ARMv7
echo "Building for ARMv7..."
arm-linux-gnueabi-gcc -O3 -c -Wall -Werror $file.c
arm-linux-gnueabi-ar rcs build/armv7/lib$file.a $file.o

# ARM64
echo "Building for ARM64..."
aarch64-linux-gnu-gcc-12 -O3 -c -Wall -Werror $file.c
aarch64-linux-gnu-ar rcs build/arm64/lib$file.a $file.o

# cleanup
echo "Cleaning up..."

rm $file.o

echo "---FINISHED---"