FROM jupyter/scipy-notebook

MAINTAINER OpenFisca Project

USER root
RUN bash "apt-get install git" 

USER jovyan
RUN bash "pip install openfisca-core && \ 
    pip install openfisca-france && \
    cd /home/jovyan/work/
    git clone https://github.com/openfisca/openfisca-web-notebook.git"

USER root
RUN chown jovyan /home/jovyan/work/


