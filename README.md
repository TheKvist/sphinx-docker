# Python Sphinx in Docker

**DISCLAIMER**: This is neither an official image nor am I affiliated with
the [Sphinx Documentation Generator](http://www.sphinx-doc.org/) in any way.

**WARNING**: This image uses `alpine:edge` as a base, which is considered
unstable. Thus, the image may break at any time.


## Introduction

This Docker container built upon Alpine Linux provides a full setup for the
Sphinx Documentation Generator.


## Usage


### Quickstart

To run the sphinx quickstart utility, just execute

```sh
docker run --rm -ti $PWD:/sphinx kvistware/sphinx
```

This will mount the current directory into the container and interactively
run quickstart for you to setup an instance of your documentation.


### Generation

The container already includes all utilities for you to generate documentation
in any desired form. To see the available options, just run

```sh
docker run --rm -ti $PWD:/sphinx kvistware/sphinx make
```

and then append the desired target format to the same command, e.g. to generate
your documentation in HTML and PDF format, simply execute

```sh
docker run --rm -ti $PWD:/sphinx kvistware/sphinx make html latexpdf
```

and you're good to go.

