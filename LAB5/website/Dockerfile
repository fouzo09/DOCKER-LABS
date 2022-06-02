FROM python:3.8-slim

LABEL maintainer="DIALLO Mafouz <mafouzdiallo@gmail.com>"

WORKDIR /var/www/

COPY . .
 
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "./main.py" ]