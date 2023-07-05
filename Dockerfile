FROM python:3.11.4-alpine

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

CMD sh -c "cp configs/config-mm.json config.json && python index.py && cp configs/config-dd.json config.json && python index.py"
