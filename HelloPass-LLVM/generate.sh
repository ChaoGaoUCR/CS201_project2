#!/bin/sh

cd test
clang-10 -S -fno-discard-value-names -emit-llvm test1.c -o test1.ll
clang-10 -S -fno-discard-value-names -emit-llvm test2.c -o test2.ll
clang-10 -S -fno-discard-value-names -emit-llvm test3.c -o test3.ll
clang-10 -S -fno-discard-value-names -emit-llvm test4.c -o test4.ll
clang-10 -S -fno-discard-value-names -emit-llvm test5.c -o test5.ll