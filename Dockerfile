FROM continuumio/miniconda3:24.7.1-0
WORKDIR /usr/src/app

# to make stuff deterministic: hash, set iteration order, ...
ENV PYTHONHASHSEED=2385634216

ENV PIP_DISABLE_PIP_VERSION_CHECK=1
ENV PYTHONIOENCODING=UTF-8
COPY retrace-record-replay-test/environment.yaml environment.yaml
RUN conda env create -f environment.yaml
# RUN conda init bash && . ~/.bashrc
# && conda activate retrace-record-replay-test