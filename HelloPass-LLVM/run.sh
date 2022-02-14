#!/bin/sh
cd Pass/build
make clean
make -j4
cd ../../test
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test.ll
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test1.ll
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test2.ll
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test3.ll
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test4.ll
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test5.ll
opt-10 -load-pass-plugin ../Pass/build/libLLVMValueNumberingPass.so  -passes=value-numbering test6.ll
