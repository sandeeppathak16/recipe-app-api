FROM python:3.7-alpine
MAINTAINER sandeep

ENV PYTHONUNBUFFERED 1

COPY ./requirment.txt /requirment.txt
RUN pip install -r /requirment.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
