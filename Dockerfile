FROM python:3.11.2-slim

WORKDIR /app

RUN pip install --upgrade pip

COPY ./Requirements.txt /app/Requirements.txt

RUN pip install -r Requirements.txt

COPY ./models /app/models
COPY ./test_data /app/test_data
COPY ./model_service.py /app/model_service.py

CMD ["python", "/app/model_service.py"]

EXPOSE 5000
