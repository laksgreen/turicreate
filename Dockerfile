The docker image use the Ubuntu-18.04 version for CPU 
FROM ubuntu:18.04
ARG ARG1
# It would Prevent apt-get asking questions and expecting our response
ENV DEBIAN_FRONTEND noninteractive

# Update package database
RUN apt-get update
RUN apt-get -y upgrade
# Create a working directory and set it
RUN mkdir turicreate
WORKDIR /turicreate
# Install Python 3.6, pip, turicreate and dependencies
RUN apt-get -y install python3.6 python3.6-distutils libgomp1 lsb-release
RUN apt-get -y install build-essential libpython3.6-dev
RUN ln -s /usr/include/locale.h /usr/include/xlocale.h
ADD https://bootstrap.pypa.io/get-pip.py /turicreate/get-pip.py
RUN python3.6 get-pip.py

# Create a requirements.txt file and add the python packages with versions, then Install it
COPY requirements.txt /turicreate
RUN pip install -r requirements.txt
# Copy your souce code and install turicreate
COPY . /turicreate
RUN pip install -U turicreate
RUN ln -s /usr/bin/python3.6 /usr/bin/python
RUN cd /turicreate

# If you have required the passing arguments when you run the containers.
CMD python train.py $ARG1 
