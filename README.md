# Python Sphinx in Docker

**DISCLAIMER**: THIS IS NEITHER AN OFFICIAL IMAGE NOR AM I AFFILIATED WITH
SPHINX DOC IN ANY WAY!

**DOUBLE DISCLAIMER**: THE ALPINE LINUX VERSION USED AS BASE FOR THIS IMAGE IS
EDGE. THUS, THE IMAGE MAY BREAK AT ANY TIME!


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

