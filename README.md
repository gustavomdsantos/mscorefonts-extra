## Extra MsCoreFonts Installer

> Debian packages for Microsoft Windows 11 fonts that are not included in `ttf-mscorefonts-installer`.

This project maintains Microsoft Windows 11 essential font files, packaged in a single `.deb` file, for GNU/Linux systems. The package depends on `ttf-mscorefonts-installer` just to make the installation of all these fonts easier.

Inspired by:

* [Lexics' Guide to Microsoft Fonts on Linux](https://lexics.github.io/installing-ms-fonts)

* [pjobson/Microsoft-Fonts repo](https://github.com/pjobson/Microsoft-Fonts)

* [streetsamurai00mi/ttf-ms-win10 repo (pacman packages)](https://github.com/streetsamurai00mi/ttf-ms-win10)

### Installation

1. Download the latest `.deb` file here:
   
    [![Release version](https://img.shields.io/github/v/release/gustavomdsantos/mscorefonts-extra?color=brightgreen&label=Download&style=for-the-badge)](https://github.com/gustavomdsantos/mscorefonts-extra/releases/latest)

2. Open it with any Debian package installer (*dpkg*, *gdebi*, *captain*, etc).

3. If your system is saying that the `ttf-mscorefonts-installer` package is not available, run this command and try to install the `.deb` file again:
   
    ```bash
    sudo add-apt-repository multiverse && sudo apt update
    ```

4. Enjoy!

### Included fonts

* Arial (via `ttf-mscorefonts-installer` package)
* Bahnschrift
* Calibri
* Cambria
* Candara
* Comic Sans MS (via `ttf-mscorefonts-installer` package)
* Consolas
* Constantia
* Corbel
* Courier New (via `ttf-mscorefonts-installer` package)
* Franklin Gothic
* Gabriola
* Georgia (via `ttf-mscorefonts-installer` package)
* HoloLens MDL2 Assets
* Impact (via `ttf-mscorefonts-installer` package)
* Ink Free
* Javanese Text
* Lucida Console
* Lucida Sans Unicode
* MV Boli
* Marlett
* Microsoft Sans Serif
* Palatino Linotype
* Segoe Fluent Icons
* Segoe MDL2 Assets
* Segoe Print
* Segoe Script
* Segoe UI
* Sitka Text
* Sylfaen
* Symbol
* Tahoma
* Times New Roman (via `ttf-mscorefonts-installer` package)
* Trebuchet MS (via `ttf-mscorefonts-installer` package)
* Verdana (via `ttf-mscorefonts-installer` package)
* Webdings (via `ttf-mscorefonts-installer` package)
* Wingdings

### EXCLUDED fonts

All fonts in `ttf-mscorefonts-installer` (to avoid duplicated files) and:

* Ebrima
* Gadugi
* Leelawadee UI
* Malgun Gothic
* Microsoft Himalaya
* Microsoft New Tai Lue
* Microsoft PhagsPa
* Microsoft Tai Le
* Microsoft Yi Baiti
* Mongolian Baiti
* Myanmar Text
* Nirmala UI
* SimSun-ExtB

### License

**Extra MsCoreFonts Installer** is distributed under the terms of the Microsoft TrueType Fonts EULA. See the COPYING file for details.
