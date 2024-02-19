FROM python:3.11-slim-bullseye
RUN apt update
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
RUN chmod +x run.sh
CMD ["./run.sh"]