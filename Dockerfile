FROM nvidia/cuda:9.0-cudnn7-devel-ubuntu16.04
WORKDIR /tmp
COPY packages.txt .
RUN apt-get update
RUN apt-get install -y python3
RUN ln -s /usr/bin/python3 /usr/bin/python
RUn apt-get install -y python3-pip
RUN pip3 install -r /tmp/packages.txt -i https://pypi.douban.com/simple/
