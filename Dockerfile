FROM python:3.14.0a3-alpine3.21

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHINUNBUFFERED=1

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install -r requirements.txt


EXPOSE 5000


CMD ["python", "app.py"]