FROM python:3.9.2

RUN apt-get update && apt-get install -y git

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENV FLASK_APP=src/app.py

ADD http://info.cern.ch/hypertext/WWW/TheProject.html /app/src/templates/index.html

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
