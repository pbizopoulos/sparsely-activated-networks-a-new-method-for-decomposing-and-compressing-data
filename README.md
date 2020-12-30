[![arXiv](http://img.shields.io/badge/cs.LG-arXiv%3A1911.00400-B31B1B.svg)](https://arxiv.org/abs/1911.00400)
[![citation](http://img.shields.io/badge/citation-0091FF.svg)](https://scholar.google.com/scholar?hl=en&as_sdt=0%2C5&q=%CE%94%CE%AF%CE%BA%CF%84%CF%85%CE%B1+%CE%91%CF%81%CE%B1%CE%B9%CE%AE%CF%82+%CE%95%CE%BD%CE%B5%CF%81%CE%B3%CE%BF%CF%80%CE%BF%CE%AF%CE%B7%CF%83%CE%B7%CF%82%3A+%CE%9C%CE%B9%CE%B1+%CE%BD%CE%AD%CE%B1+%CE%BC%CE%AD%CE%B8%CE%BF%CE%B4%CE%BF%CF%82+%CE%B1%CF%80%CE%BF%CF%83%CF%8D%CE%BD%CE%B8%CE%B5%CF%83%CE%B7%CF%82+%CE%BA%CE%B1%CE%B9+%CF%83%CF%85%CE%BC%CF%80%CE%AF%CE%B5%CF%83%CE%B7%CF%82+%CE%B4%CE%B5%CE%B4%CE%BF%CE%BC%CE%AD%CE%BD%CF%89%CE%BD.+arxiv+2020&btnG=)
[![template](http://img.shields.io/badge/template-EEE0B1.svg)](https://github.com/pbizopoulos/a-makefile-for-developing-containerized-latex-technical-documents-template)
[![test-document](https://github.com/pbizopoulos/sparsely-activated-networks-a-new-method-for-decomposing-and-compressing-data/workflows/test-document/badge.svg)](https://github.com/pbizopoulos/sparsely-activated-networks-a-new-method-for-decomposing-and-compressing-data/actions?query=workflow%3Atest-document)

# Sparsely Activated Networks: A new method for decomposing and compressing data
This repository contains the code that generates **Sparsely Activated Networks: A new method for decomposing and compressing data**.

## Requirements
- [POSIX-oriented operating system](https://en.wikipedia.org/wiki/POSIX#POSIX-oriented_operating_systems)
- [Docker](https://docs.docker.com/get-docker/)
- [Make](https://www.gnu.org/software/make/)

## Instructions
1. `git clone https://github.com/pbizopoulos/sparsely-activated-networks-a-new-method-for-decomposing-and-compressing-data`
2. `cd sparsely-activated-networks-a-new-method-for-decomposing-and-compressing-data/`
3. `sudo systemctl start docker`
4. make options
    * `make`             # Generate the document.
    * `make clean`       # Remove the tmp/ directory.
