# docker-documentation

![Build Status](https://travis-ci.org/icaoberg/docker-documentation.svg?branch=master)
![Big Data](https://img.shields.io/badge/big%20data-true-blue.svg)
[![GitHub issues](https://img.shields.io/github/issues/icaoberg/docker-documentation.svg)](https://github.com/icaoberg/docker-documentation/issues)
[![GitHub forks](https://img.shields.io/github/forks/icaoberg/docker-documentation.svg)](https://github.com/icaoberg/docker-documentation/network)
[![GitHub stars](https://img.shields.io/github/stars/icaoberg/docker-documentation.svg)](https://github.com/icaoberg/docker-documentation/stargazers)
[![GitHub license](https://img.shields.io/badge/license-GPLv3-blue.svg)](https://raw.githubusercontent.com/icaoberg/docker-documentation/master/LICENSE)

## Building the image from the Dockerfile

[![asciicast](https://asciinema.org/a/216243.svg)](https://asciinema.org/a/216243)

To build the image using the `Dockerfile` in this repository, run the command

```
➜ docker build -t "icaoberg/documentation" .
```

## Running a container

[![asciicast](https://asciinema.org/a/216245.svg)](https://asciinema.org/a/216245)

To run a container from image above, run the command

```
docker run -i -t "icaoberg/documentation"
```

## Tools
The tools installed in the container stargazers
* [pandoc](https://pandoc.org/)
* sphinx
* vim
* xmllint
* [TeXLive](https://www.tug.org/texlive/)
