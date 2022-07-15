# Copyright (c) 2019, NVIDIA CORPORATION.  All rights reserved.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

ARG FROM_IMAGE_NAME=pytorch/pytorch:latest
FROM ${FROM_IMAGE_NAME}

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install vim

ADD requirements.txt .
RUN pip install -r requirements.txt
