FROM jupyter/scipy-notebook

MAINTAINER OpenFisca Project

ADD example/example1.ipynb /home/jovyan/work/
USER root
RUN chown jovyan /home/jovyan/work/example1.ipynb

ADD install_openfisca.sh /home/jovyan/
RUN chmod +x /home/jovyan/install_openfisca.sh
USER jovyan
RUN cd /home/jovyan/ && ./install_openfisca.sh

