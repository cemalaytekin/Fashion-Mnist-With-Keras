FROM gaarv/jupyter-keras

USER root

RUN /bin/bash -c 'mkdir /app'

RUN git clone https://github.com/cemalaytekin/Fashion-Mnist-With-Keras.git /app

WORKDIR /app

USER jovyan

COPY requirements.txt ./
RUN pip install --trusted-host pypi.python.org -r requirements.txt


USER root

RUN /bin/bash -c 'chmod -R 777 ./'

USER jovyan
