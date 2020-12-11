#-----------------------------------------------------------------------------------
# Build a Flask web app from Python3 image
# Ref: https://docs.docker.com/compose/gettingstarted/
# Ref: https://flask.palletsprojects.com/en/1.1.x/quickstart/#a-minimal-application
#-----------------------------------------------------------------------------------
FROM python:3
LABEL author=kamaleshpradhan@gmail.com
ENV FLASK_APP=server.py
ENV FLASK_RUN_HOST=0.0.0.0
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
COPY . .
CMD flask run