FROM ubuntu:16.04

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
  wget curl \
  graphviz libxml2-utils
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
