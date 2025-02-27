FROM python:3.11.9-alpine3.20

WORKDIR /

COPY .. .

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "main.py"]