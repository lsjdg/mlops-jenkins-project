FROM python:3.9

WORKDIR /app

COPY ./app/requirements.txt /app/requiremets.txt

RUN pip install --no-cache-dir --upgrage -r /app/requirements.txt

COPY ./app /app

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]