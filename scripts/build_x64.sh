#!/bin/bash

set -xe

# True Command
nasm -o build/true.o -felf64 src/x64/true.asm
ld build/true.o -o build/true -nostdlib
# False Command
nasm -o build/false.o -felf64 src/x64/false.asm
ld build/false.o -o build/false -nostdlib
