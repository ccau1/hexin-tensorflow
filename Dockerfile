# for more explicit dockerfile build with keras and conda
# https://github.com/keras-team/keras/blob/master/docker/Dockerfile


FROM tensorflow/tensorflow:latest-py3-jupyter

# set working directory
#     create app folder
# RUN mkdir -p /tf
#     move to app folder
WORKDIR /tf

# COPY ./tf /tf

CMD jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root
