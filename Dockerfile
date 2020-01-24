FROM python:2.7-slim

COPY . ./app
WORKDIR /app

RUN pip install -r requirements.txt

# EXPOSE 3001
# ENV FLASK_APP app.py

CMD FLASK_APP=app.py flask run -p 3001
