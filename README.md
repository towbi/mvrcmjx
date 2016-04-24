# NAME

mvrcmjx - Move and refactor classes in mixed Java and Xtend projects

# SYNOPSIS

mvrcmjx \[options\] from to

    Options:
      -b, --base dir        base directory

    -v, --verbose         verbose messages
    -h, --help            brief help message
    -m, --man             full documentation

# DESCRIPTION

mvrcmjx is a command line utility to move and refactor classes in mixed Java
and Xtend projects.

mvrcmjx expects one top level class declaration per source file and the file's
basename to match the class name. This is a requirement in pure Java projects,
but not in Xtend projects. mvrcmjx tries to detect mismatches in Xtend files
and skips those file. Not all mismatches will be found, however, and the
project might not perform the refactoring correctly.

mvrcmjx also ignores wild card import statements, i.e. if the class to refactor
was imported by a wild card, that import has to be done manually.

mvrcmjx does not add imports that become necessary when a class is moved out of
a package with dependencies in that package. Consequently it also does not
remove imports that become unnecessary after a move.

In other words: mvrcmjx works most of the time (especially if you follow common
best practices), but might leave your project with compilation errors. These
should be easy to correct, though.

# OPTIONS

- **-b, --base dir**

    Sets the source code base directory, i.e. the directory from which on the
    directory structure reflects the project's package structure. The default is
    for mvrcmjx to ascend the directory structure until a directory 'java' is
    found and use it as the base directory.

- **-v, --verbose**

    Prints verbose messages during refactoring.

- **-help**

    Prints a brief help message and exits.

- **-man**

    Prints the manual page and exits.

# DESCRIPTION

**This program** will read the given input file(s) and do something
useful with the contents thereof.
