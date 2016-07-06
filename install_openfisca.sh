#!/bin/bash

# Current directory is /home/jovyan

source /opt/conda/bin/activate python2

pip install openfisca-core
pip install openfisca-france

cd /home/jovyan/work
git clone https://github.com/openfisca/openfisca-web-notebook.git
