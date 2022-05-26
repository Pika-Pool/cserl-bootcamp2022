# Compiling multiple C++ files into single binary

`g++` compiler can handle linking multiple files by default.

So to compile files in `make_exercise`, just run this command inside the make_exercise directory

```sh
g++ -std=c+20 -Wall -o main -I. factorial.cpp hello.cpp main.cpp
```

> `-I.` is used to so `g++` will loo in current dir(.) for the include file `functions.h`
