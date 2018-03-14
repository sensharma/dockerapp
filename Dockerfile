FROM python:3.6
ENV PYTHONUNBUFFERED 1
RUN mkdir /config && \
    mkdir /src
WORKDIR /src
ADD /config/requirements.txt /config/
RUN pip install -r /config/requirements.txt