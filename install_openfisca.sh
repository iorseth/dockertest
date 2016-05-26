#!/bin/bash

# Current directory is /home/jovyan

source /opt/conda/bin/activate python2

git clone https://github.com/openfisca/openfisca-core.git
cd openfisca-core
pip install --editable .
python setup.py compile_catalog
cd ..

git clone https://github.com/openfisca/openfisca-france.git
cd openfisca-france
pip install --editable .
python setup.py compile_catalog
cd ..

git clone https://github.com/openfisca/openfisca-france-indirect-taxation.git
cd openfisca-france-indirect-taxation
pip install --editable .
cd ..

