FROM jupyter/scipy-notebook

MAINTAINER OpenFisca Project

ADD install_openfisca.sh /home/jovyan/
USER root
RUN chmod +x /home/jovyan/install_openfisca.sh
RUN chown jovyan /home/jovyan/work/
USER jovyan
RUN cd /home/jovyan/ && ./install_openfisca.sh



