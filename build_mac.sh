#!/bin/bash

mkdir build
mkdir build/mac
mkdir build/ios

file="addition"

# MAC
echo Building for MAC...
clang -dynamiclib -o build/mac/lib$file.dylib $file.c -arch x86_64 -arch arm64 -O3

# IOS
echo Building for IOS...
# xcrun --sdk iphoneos clang -arch armv7 -arch arm64 -isysroot `xcrun --sdk iphoneos --show-sdk-path` -framework UIKit -dynamiclib -o build/ios/lib$file.dylib $file.c
xcrun --sdk iphoneos clang -arch armv7 -arch arm64 -c $file.c -o build/ios/$file.o -static -O3
ar rcs build/ios/lib$file.a build/ios/$file.o
rm -f build/ios/$file.o
