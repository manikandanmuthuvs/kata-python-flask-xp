FROM ubuntu:latest
LABEL maintainer "manikandan.muthuv@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
EXPOSE 8080
CMD ["python","app.py","runserver","0.0.0.0:8080"]

