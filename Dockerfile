FROM alpine:edge

RUN apk add --no-cache make python3 texlive texmf-dist-latexextra

RUN pip3 install --upgrade pip
RUN pip install sphinx sphinx_rtd_theme

WORKDIR /sphinx

CMD ["sphinx-quickstart"]
