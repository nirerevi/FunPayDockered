FROM python:3.11-alpine

WORKDIR /

RUN apk add --no-cache gcc musl-dev libffi-dev openssl-dev

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "main.py"]