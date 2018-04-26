FROM ubuntu:latest

MAINTAINER Ivan E. Cao-Berg <icaoberg@alumni.cmu.edu>
LABEL Description="Just a simple container to build documentation"
LABEL Vendor="www.7daysofhappiness.org"
LABEL Version="0.1"

RUN apt-get update --fix-missing
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get install -y texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra
RUN apt-get install -y pandoc vim
RUN apt-get install -y build-essential git vim wget python3 python3-pip
RUN pip3 install numpy scipy matplotlib xlrd  pandas tabulate sphinx_rtd_theme sphinxcontrib.gist
RUN pip3 install -I sphinx

# Configure environment
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash
ENV USERNAME icaoberg
ENV UID 1000
RUN useradd -m -s /bin/bash -N -u $UID $USERNAME
RUN if [ ! -d /home/$USERNAME/ ]; then mkdir /home/$USERNAME/; fi
WORKDIR /home/$USERNAME/
USER $USERNAME
