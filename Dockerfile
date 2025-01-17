FROM docker:latest

RUN apk update && apk add py3-pip

RUN pip install click docker pygithub

COPY ./app.py app.py

ENTRYPOINT ["python3", "app.py"]
