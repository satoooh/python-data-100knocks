FROM python:3.10


RUN apt-get -y update

# JupyterLab 関連のパッケージ（いくつかの拡張機能を含む）
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    black \
    jupyterlab \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipykernel \
    ipywidgets \
    import-ipynb


# for dlib
RUN apt-get install -y build-essential cmake

# 基本パッケージ
RUN pip install --no-cache-dir \
    numpy \
    pandas \
    openpyxl \
    scikit-learn \
    matplotlib \
    japanize_matplotlib \
    networkx \
    PuLP \
    ortoolpy \
    opencv-python \
    dlib \
    mecab-python3


WORKDIR /app