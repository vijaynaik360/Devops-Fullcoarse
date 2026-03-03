FROM python:3.10-slim

WORKDIR /app
COPY . /app/

RUN pip install -r requirement.txt

expose 8501

cmd ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
