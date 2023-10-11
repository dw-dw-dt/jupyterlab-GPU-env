FROM nvcr.io/nvidia/pytorch:23.07-py3

RUN apt-get update && apt-get install -y --no-install-recommends

RUN apt-get autoremove -y && apt-get clean

RUN rm -rf /var/lib/apt/lists/