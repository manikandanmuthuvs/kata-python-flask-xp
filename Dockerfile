FROM python:3
# LABEL maintainer "manikandan.muthuv@gmail.com"
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
EXPOSE 8080
ENV NAME kata-python-flask-xp
CMD ["python","app.py"]

