FROM alpine:edge

RUN apk add --no-cache make python3 texlive texmf-dist-latexextra

RUN pip3 install --upgrade pip setuptools
RUN pip install sphinx sphinx-rtd-theme sphinxcontrib-plantuml

WORKDIR /sphinx

CMD ["sphinx-quickstart"]
