FROM ubuntu:disco

RUN apt-get update \
    && apt-get install -y \
    && apt-get -qq update \
    && apt-get install -y --no-install-recommends \
        latexmk texlive-fonts-extra texlive-fonts-recommended texlive-latex-base texlive-latex-extra \
        texlive-latex-recommended texlive-luatex texlive-xetex texlive-pictures texlive-lang-french \
        lmodern fonts-font-awesome \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
