FROM python:3.6.3

COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN python3 -m spacy download en

COPY . /opt/app
WORKDIR /opt/app

CMD ["python", "app.py"]`
