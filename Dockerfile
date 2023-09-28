FROM ubuntu:20.04

RUN apt-get update

RUN apt-get install -y software-properties-common && \
    apt-get install -y python3.8 && \
    apt-get install -y vim

ADD ./main.py ./

CMD python3 main.py && tail -f /dev/null
