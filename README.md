# About

Personal fork with extended functionality of [DepressiveRobots A4 version](https://github.com/depressiveRobot/friggeri-cv-a4) of the [Friggeri CV](https://www.sharelatex.com/templates/cv-or-resume/fancy-cv) from Adrien Friggeri.
![](samples/cv.svg?raw=true)

## Changes from DepressiveRobot's version:
- [ ] Conditionally tagged content which turns on/off sections at render. For easy CV generation between different sectors (e.g. academia vs. private) or lengths (short for European vs. long for USA)
- [X] Added photo.
- [ ] Added option for setting photo.
- [ ] Design: Fix leftmargin=* no indent on item lists and add hspace to let bullets breath
- [ ] Design: Keep section header on same page as section start.
- [ ] Include clickable hyperlinks to url on bibtex publication items if url is included.


## Usage

Run `make pdf` to create the PDF (`cv.pdf`).
See `make help` for an overview of available targets.

This template needs the following dependencies installed:

* TikZ (header)
* XeTex and fontspec (custom fonts)
* biblatex/biber (publications)
* textpos (aside)

## Options

* `print`: renders in black and white, and reverts the header to dark on light
* `nocolors`: no colors in section headers (but still use dark header)

![](samples/cv_nocolors.png?raw=true)

## License

[MIT License](https://opensource.org/licenses/MIT), Copyright (C) 2019, Gilles Jacobs

[MIT License](https://opensource.org/licenses/MIT), Copyright (C) 2017, Marvin Frommhold