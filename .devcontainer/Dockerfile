FROM jupyter/datascience-notebook:latest

USER root

RUN apt-get -y update

# for dlib
RUN apt-get install -y build-essential cmake

# for graphviz
RUN apt-get install -y graphviz


USER jovyan

# JupyterLab 関連のパッケージ（いくつかの拡張機能を含む）
RUN pip install --upgrade pip \
    &&  pip install --no-cache-dir jupyter_contrib_nbextensions

#install packages
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    openpyxl \
    scikit-learn \
    matplotlib \
    japanize_matplotlib \
    graphviz \
    networkx \
    PuLP \
    ortoolpy \
    opencv-python \
    dlib \
    mecab-python3
