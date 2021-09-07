#!/bin/bash

tar -xf NthPrime.tgz
cd NthPrime
gcc -o NthPrime main.c nth_prime.c
echo $(./NthPrime "$1")

