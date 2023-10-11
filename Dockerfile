FROM nvcr.io/nvidia/pytorch:23.07-py3

RUN apt-get update && apt-get install -y --no-install-recommends

RUN python3 -m pip install --upgrade pip

RUN apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /usr/local/src/*

WORKDIR /workspace