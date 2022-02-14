#!/bin/sh
cd Pass/build
cmake -DCMAKE_BUILD_TYPE=Release ../Transforms/ValueNumbering
cd ../../test
clang-10 -S -fno-discard-value-names -emit-llvm test.c -o test.ll

clang-10 -S -fno-discard-value-names -emit-llvm test1.c -o test1.ll
clang-10 -S -fno-discard-value-names -emit-llvm test2.c -o test2.ll
clang-10 -S -fno-discard-value-names -emit-llvm test3.c -o test3.ll
clang-10 -S -fno-discard-value-names -emit-llvm test4.c -o test4.ll
clang-10 -S -fno-discard-value-names -emit-llvm test5.c -o test5.ll
clang-10 -S -fno-discard-value-names -emit-llvm test6.c -o test6.ll
