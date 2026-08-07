FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app/ ./app/
COPY service.yaml ./
COPY tests/ ./tests/
ENV PYTHONUNBUFFERED=1
ENV PORT=8105
EXPOSE 8105
CMD ["python", "-m", "app.main"]
