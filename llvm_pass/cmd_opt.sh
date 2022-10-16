# opt -disable-output -passes=helloworld ./a.ll
# opt -disable-output -passes=globalopt ./a.ll

clang -c -emit-llvm hello.c -o hello.bc
opt -load /slowfs/cn59sig01/usr/tongg/cit_compilers/llvm-project/mybuilddir/lib/LLVMHello.so -hello2 -enable-new-pm=0 < hello.bc > /dev/null
