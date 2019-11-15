FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
        software-properties-common

RUN apt-get update && apt-get install -y \
        wget \
        vim \
	curl 

RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt-get update && apt-get install -y \
        python3.7 \
        python3-pip
RUN python3.7 -m pip install pip
RUN apt-get update && apt-get install -y \
        python3.7-distutils \
        python3-setuptools
RUN apt-get install -y gcc-5
RUN apt-get install -y gfortran-5
RUN apt-get install -y libopenblas-dev liblapack-dev build-essential
RUN apt-get install -y python3.7-dev
RUN apt-get install -y tar
RUN apt-get install -y unzip
RUN python3.7 -m pip install -U setuptools
RUN wget http://www.netlib.org/lapack/lapack-3.8.0.tar.gz
RUN wget https://files.pythonhosted.org/packages/c2/f7/c7b501b783e5a74cf1768bc174ee4fb0a8a6ee5af6afa92274ff964703e0/setuptools-40.8.0.zip
RUN wget https://sourceforge.net/projects/openblas/files/v0.3.6/OpenBLAS-0.3.6-x64.zip/download
RUN wget https://files.pythonhosted.org/packages/f1/cb/3297656b9a3cce0cb60c691d568225fc025d47d3eb668b3c480211801a52/scikit-learn-0.20.3.tar.gz
RUN wget https://files.pythonhosted.org/packages/21/89/ca320e5b45d381ae0df74c4b5694f1471c1b2453c5eb4bac3449f5970481/Cython-0.28.5.tar.gz
RUN wget https://files.pythonhosted.org/packages/ee/5b/5afcd1c46f97b3c2ac3489dbc95d6ca28eacf8e3634e51f495da68d97f0f/scipy-1.3.1.tar.gz
RUN wget https://files.pythonhosted.org/packages/cb/79/96df883cd6df0c86cb010e6f4ff790b7a30a45016a9509c94ea72c8695cd/numpy-1.17.1.zip
RUN tar xvf scikit-learn-0.20.3.tar.gz
RUN tar xvf scipy-1.3.1.tar.gz
RUN tar xvf lapack-3.8.0.tar.gz
RUN tar xvf Cython-0.28.5.tar.gz
RUN unzip setuptools-40.8.0.zip   
RUN unzip numpy-1.17.1.zip

CMD ["/bin/bash"]
