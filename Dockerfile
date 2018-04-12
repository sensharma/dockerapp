FROM continuumio/miniconda3:latest
ENV PYTHONUNBUFFERED 1
# Install system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
      apt-utils \
      software-properties-common \
      python3-software-properties \
      # includes gcc & g++
      build-essential \
      # Bizzarely, this is required for uwsgi, despite the fact that conda python3 is already there!
      python3-dev \
      bzip2 \
      cmake \
      gfortran \
      git \
      gnustep-gui-runtime \
      libcurl4-openssl-dev \
      libhdf5-dev \
      exuberant-ctags \
      curl \
      vim \
      unzip \
      tar \
      dctrl-tools \
      tmux \
      silversearcher-ag \
      neovim \
      wget && \
    apt-get -y autoclean \
      autoremove \
      clean && \
    rm -rf /var/lib/apt/lists/*
RUN mkdir /config && \
    mkdir /src
WORKDIR /src
ADD /config/requirements.txt /config/
RUN conda update -y conda && \
    conda update -y --all && \
    conda install conda-forge::uwsgi && \
    # required for uwsgi
    conda install conda-forge::libiconv && \
    pip install -r /config/requirements.txt && \
    conda clean -pyt && \
    rm -rf ~/.cache/pip/*

ENV PYTHONPATH='/src/:$PYTHONPATH'
