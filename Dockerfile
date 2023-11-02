FROM python:3.8
WORKDIR /app
COPY webcon/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000
CMD [ "python", "main.py"]