FROM python:3.7.6-alpine3.10

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt 

COPY . .

ENV PORT=80

ENV TOKEN

EXPOSE $PORT

CMD ["python", "main.py"]
