#!/bin/bash

# Makefile-like script for preparing files before building .deb package.
# "-d" argument allows you to edit the fonts folder.

CD_FOLDER="./mscorefonts-extra/usr/share/fonts/truetype/"
COMPRESS_FOLDER="msttcorefonts-extra"
COMPRESSED_FILE="$COMPRESS_FOLDER.tar.zst"

compress() {
    echo "Compressing font files..."
    tar -I 'zstd -19 -v' -cf "$COMPRESSED_FILE" "$COMPRESS_FOLDER/" &&
        rm -Rf "$COMPRESS_FOLDER/"
}

decompress() {
    echo "Decompressing font files..."
    tar --zstd -xvf "$COMPRESSED_FILE" && rm -f "$COMPRESSED_FILE"
}

show_help() {
    local help_text="
Makefile-like script for 'mscorefonts-extra' font files
=======================================================

Usage: $0 [-c] [-d] [-h | --help]

Options:
    -c                  (default) compresses '$COMPRESS_FOLDER' folder
                        in '$CD_FOLDER'

    -d                  decompresses '$COMPRESSED_FILE' file
                        in '$CD_FOLDER'

    -h, --help          shows this help.

See README file at https://github.com/gustavomdsantos/mscorefonts-extra/
    "
    echo -e "$help_text"
}

main() {
    cd "$CD_FOLDER"
    case "$1" in
        "-c")
            compress;;
        "-d")
            decompress;;
        "-h" | "--help")
            show_help;;
        *)
            compress;;
    esac
}

main "$1"
