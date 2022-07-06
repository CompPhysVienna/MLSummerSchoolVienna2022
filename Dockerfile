# Build with: docker build . -t summer-school
# Unix Run with: docker run -v <fullpath>/test/:/home/test/ -p 8888:8888 -it summer-school /bin/bash
# Windows  with: docker run -v <fullpath>\test\:/home/test/ -p 8888:8888 -it summer-school /bin/bash
# Replace <fullpath> by absolute path to this file. You can find it by using command pwd

FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install git -y
RUN git config --global url."https://github.com/".insteadOf git@github.com:
RUN apt-get install vim -y
RUN apt-get install nano -y
RUN apt-get install python3 -y
RUN apt-get install g++ -y
RUN apt-get install make -y
RUN apt-get install gfortran -y

# For n2p2 + lammps
RUN apt-get install libopenmpi-dev -y
RUN apt-get install libeigen3-dev -y
RUN apt-get install libgsl-dev -y
RUN apt-get install liblapack-dev -y 
RUN apt-get install libblas-dev -y
RUN apt-get install wget -y
WORKDIR /home/
RUN git clone https://github.com/CompPhysVienna/n2p2
WORKDIR /home/n2p2/src/
RUN make all
RUN make lammps-nnp

#For python
RUN apt-get install python3-pip -y
RUN pip install --upgrade pip \
&& pip install \
jupyter \
matplotlib \
numpy \
pandas \
scikit-learn \
scipy \
--upgrade MDAnalysis \
nglview \ 
seaborn

# For QML
RUN pip install git+https://github.com/qmlcode/qml@develop

RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

COPY test /home/test
COPY Day06_July18 /home/Day06_July18
COPY Day07_July19 /home/Day07_July19

WORKDIR /home/
