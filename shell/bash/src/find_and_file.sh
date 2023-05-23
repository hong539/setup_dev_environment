#!/bin/bash

find /path/to/search -type f -exec file -i {} \; | grep -i 'text\|xml\|html\|pdf'

# filezie bytes?
# not executable
# ! -executable
# formant ASCII
find /path/to/search -type f -size 1033c ! -executable -exec file {} + | grep ASCII