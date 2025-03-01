#!/usr/bin/env python3

import re
import fileinput
import sys

MAKEFILE_PATH = "./m8c/Makefile"

replacements = {
    r"^INCLUDES\s\=.*": "INCLUDES = $(shell pkg-config --libs sdl2 | sed 's/-mwindows//') -L../lib -lserialport",
    r"^local_CFLAGS\s\=.*": "local_CFLAGS = $(CFLAGS) $(shell pkg-config --cflags sdl2) -I../include -Wall -O2 -pipe -I.",
    r"^CC\s\=.*": "",
}


def main():
    for line in fileinput.input(MAKEFILE_PATH):
        for pattern, replacement in replacements.items():
            if re.match(pattern, line):
                line = replacement
        sys.stdout.write(line)


if __name__ == "__main__":
    main()
