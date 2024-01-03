# this tag has python 3.8.5
FROM continuumio/miniconda3:4.9.2
RUN apt-get --allow-releaseinfo-change update && \
    apt-get install --no-install-recommends -qy \
    bash curl vim zip unzip openssh-client wget

WORKDIR /workspace
COPY . /workspace/
RUN pip install --no-cache-dir -r pip-freeze.txt
