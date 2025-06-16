FROM python:3.12.10-alpine
LABEL maintainer="@uday"

COPY /add-uday-service/requirements.txt /tmp

RUN pip install -r /tmp/requirements.txt

COPY ./add-uday-service /add-uday-service

CMD python /add-uday-service/app.py
