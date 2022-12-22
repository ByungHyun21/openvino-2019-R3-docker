FROM ubuntu:18.04

WORKDIR /home/openvino-2019-R3-docker

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y wget
RUN apt-get install -y gnupg gnupg2

# Install packages for python
RUN apt-get install -y build-essential python-dev python-setuptools python-pip python-smbus  
RUN apt install -y software-properties-common
RUN add-apt-repository ppa:deadsnakes/ppa
RUN apt install -y python3.6

RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.6 3
RUN apt install -y python3-pip

# Get OpenVINO
RUN wget https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
RUN apt-key add GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB
RUN echo "deb https://apt.repos.intel.com/openvino/2019 all main" >> /etc/apt/sources.list.d/intel-openvino-2019.list

# Install OpenVINO
RUN apt update
RUN apt install -y intel-openvino-dev-ubuntu18-2019.3.376

# Install additional packages
RUN pip install numpy
RUN pip install networkx

