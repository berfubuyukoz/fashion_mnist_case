FROM gaarv/jupyter-keras

USER root

RUN /bin/bash -c 'mkdir /app'

RUN git clone https://github.com/berfubuyukoz/fashion_mnist_task.git /app

WORKDIR /app

USER jovyan

RUN pip install --trusted-host pypi.python.org -r requirements.txt

USER root

RUN /bin/bash -c 'chmod -R 777 ./'

USER jovyan

