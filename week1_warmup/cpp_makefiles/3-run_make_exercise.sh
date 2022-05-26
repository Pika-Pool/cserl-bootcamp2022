#!/bin/sh

cd ./make_exercise
g++ -std=c++20 -Wall -o main -I. factorial.cpp hello.cpp main.cpp
./main

cd ..
