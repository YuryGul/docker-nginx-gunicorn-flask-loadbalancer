FROM python:3.8.2

ADD app /app
ADD flask-hello.py /

WORKDIR .
RUN pip install pip --upgrade
RUN pip install flask gunicorn
EXPOSE 5001
