#! /bin/bash
valgrind -v --leak-check=full --log-file=error "$1"
