# Pull base image
FROM ubuntu:latest

RUN \
# Update
apt-get update -y && \

# Install Unzip
apt-get install unzip -y && \

# Install wget
apt-get install wget -y && \

# install vim
apt-get install vim -y

## Install Terraform
#  Download terraform for linux

RUN wget https://releases.hashicorp.com/terraform/0.12.10/terraform_0.12.10_linux_amd64.zip

# Unzip
RUN unzip terraform_0.12.10_linux_amd64.zip

# Move to local bin
RUN mv terraform /usr/local/bin

# Check that it's installed
RUN terraform --version

## Install Python
RUN apt-get install -y python3-pip

#RUN  ln -s /usr/bin/python3 python
RUN pip3 install --upgrade pip
RUN python3 -V
RUN pip --version

## Install AWS CLI
RUN pip install awscli --upgrade --user

# Add local templates directory and contents in /usr/local/bin/templates
ADD templates /usr/local/bin/templates

RUN mkdir ~/.aws && touch ~/.aws/credentials
