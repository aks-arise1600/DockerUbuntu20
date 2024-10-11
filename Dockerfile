FROM ubuntu:20.04

# Install packages
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python3-pip unzip tar
#RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential cmake
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libomp-dev libgtest-dev libgoogle-glog-dev libtinfo-dev zlib1g-dev libedit-dev 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libxml2-dev llvm-8-dev g++-9 gcc-9
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libboost-dev libeigen3-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libgl1-mesa-dev
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y wget git vim locales
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y net-tools lsb-release


ENV HOME_ROOT="/home/root"

RUN mkdir -p ${HOME_ROOT}
RUN cd ${HOME_ROOT}




# Set WORKDIR
WORKDIR ${HOME_ROOT}
