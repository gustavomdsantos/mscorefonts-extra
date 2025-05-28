#!/bin/bash

# Makefile-like script for preparing files before building .deb package.

CD_FOLDER="./mscorefonts-extra/usr/share/fonts/truetype/"
COMPRESS_FOLDER="msttcorefonts-extra"
COMPRESSED_FILE="$COMPRESS_FOLDER.tar.zst"

decompress() {
	echo "Decompressing font files..."
	tar --zstd -xvf "$COMPRESSED_FILE" && rm -f "$COMPRESSED_FILE"
}

compress() {
	echo "Compressing font files..."
	tar -I 'zstd -19 -v' -cf "$COMPRESSED_FILE" "$COMPRESS_FOLDER/" &&
		rm -Rf "$COMPRESS_FOLDER/"
}

main() {
	cd "$CD_FOLDER"
	case "$1" in
		"-d")
			decompress;;
		*)
			compress;;
	esac
}

main "$1"
