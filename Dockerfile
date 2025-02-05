FROM alpine:3.16.0

RUN apk add --no-cache python3-dev \
    && pip3 install --upgrade pip
    
WORKDIR /app

COPY . .

RUN pip3 --no-cache-dir install -r requirements.txt

CMD ["python", "core.py"]
