FROM python:3.9.2

RUN python -m pip install parse

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ADD https://raw.githubusercontent.com/lsapan/docker-swarm-demo/master/README.md /file.txt

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]
