#!/bin/bash

export REPOSITORY_NAME=tool/jupyter

aws ecr \
create-repository \
--repository-name $REPOSITORY_NAME
