FROM python:3.11-slim
COPY . /app
WORKDIR /app
RUN pip install -r requrirements.txt
EXPOSE   $PORT
CMD gunicorn --workers=4 --bind 0.0.0.0:$PORT app:app