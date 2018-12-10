FROM ubuntu:latest

###############################################################################################
MAINTAINER Ivan E. Cao-Berg <icaoberg@alumni.cmu.edu>
LABEL Description="Just a simple container to help me build documentation"
LABEL Vendor="www.7daysofhappiness.org"
LABEL Version="0.1"
###############################################################################################

###############################################################################################
RUN apt-get update --fix-missing
RUN apt-get install -y --no-install-recommends apt-utils build-essential wget git figlet toilet cowsay \
  texlive-latex-base texlive-fonts-recommended texlive-fonts-extra texlive-latex-extra \
  pandoc \
  vim \
  graphviz libxml2-utils \
  python3 python3-pip python3-setuptools
RUN pip3 install numpy scipy matplotlib xlrd sphinx pandas tabulate sphinx_rtd_theme sphinxcontrib.gist
###############################################################################################

###############################################################################################
# Configure environment
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash
ENV USERNAME icaoberg
ENV UID 1000
RUN useradd -m -s /bin/bash -N -u $UID $USERNAME
RUN if [ ! -d /home/$USERNAME/ ]; then mkdir /home/$USERNAME/; fi
WORKDIR /home/$USERNAME/
USER $USERNAME
###############################################################################################
