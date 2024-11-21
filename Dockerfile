FROM python:3.9-slim-buster

WORKDIR /project-2

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY main.py /project-2
COPY templates/ /project-2/templates

ENV FLASK_APP=main.py

CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]