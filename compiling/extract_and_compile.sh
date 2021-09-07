#!/bin/bash

tar -xf NthPrime.tgz
cd NthPrime || return
gcc -o NthPrime main.c nth_prime.c
./NthPrime "$1"

