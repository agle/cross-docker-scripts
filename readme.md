

Cross compiler and lifter for aarch64 ELF Linux binaries, in a docker container.

The scripts fetch the image, start a container, and provide a mechanism for running commands inside it

The entry point is the top level scripts which directly compile and lift c files or AArch64 binaries.

### Dependencies

- docker or podman

### Usage

```
mkdir bins
cd bins && echo "#include <stdio.h>
int main() {printf(\"hello world\"); }" > test.c
../lift-gcc.sh -c test.c
```

Flags to `./lift-*.sh`

One of -b or -c must be specified.

```
-c  specify the c file name
-b  specify binary file name
```

Multiple source files can be specified as below:

```
CFILE_NAME='file1.c file2.c' ./lift.sh -b a.out
```

Compiler flags can be set with `CFLAGS` environment variables.
