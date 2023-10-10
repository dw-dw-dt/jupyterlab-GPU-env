FROM nvcr.io/nvidia/pytorch:23.07-py3

RUN apt-get update && apt-get install -y --no-install-recommends

RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    black==22.3.0 \
    jupyterlab==3.4.2 \
    jupyterlab_code_formatter==1.4.11 \
    lckr-jupyterlab-variableinspector==3.0.9 \
    jupyterlab_widgets==1.1.0 \
    ipywidgets==7.7.0 \
    import-ipynb==0.1.4

RUN apt-get autoremove -y &&\
    apt-get clean &&\
    rm -rf /usr/local/src/*

WORKDIR /workspace