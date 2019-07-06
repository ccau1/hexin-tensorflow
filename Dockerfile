# for more explicit dockerfile build with keras and conda
# https://github.com/keras-team/keras/blob/master/docker/Dockerfile


FROM tensorflow/tensorflow:latest-py3-jupyter

# Install system packages
# RUN apt-get update && apt-get install -y --no-install-recommends \
#       bzip2 \
#       g++ \
#       git \
#       graphviz \
#       libgl1-mesa-glx \
#       libhdf5-dev \
#       openmpi-bin \
#       wget && \
#     rm -rf /var/lib/apt/lists/*

# set working directory
#     create app folder
RUN mkdir -p /tf
#     move to app folder
WORKDIR /tf

COPY ./tf /tf

# CMD ["python", "index.py"]
CMD jupyter notebook --port=8888 --ip=0.0.0.0 --allow-root
