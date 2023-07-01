FROM python:alpine
WORKDIR /app

COPY sources/reqs.txt .
RUN pip install --no-cache-dir -r reqs.txt

COPY sources/* ./

EXPOSE 5000

CMD ["python","app.py"]