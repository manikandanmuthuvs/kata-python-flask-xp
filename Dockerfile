FROM python:3
# LABEL maintainer "manikandan.muthuv@gmail.com"
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["python","app.py","runserver","0.0.0.0:8080"]

