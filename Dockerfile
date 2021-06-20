FROM tiangolo/uvicorn-gunicorn:python3.8

# Get project specific requirements
COPY requirements.txt ./
RUN pip install -r requirements.txt

# Copy application
COPY ./app /app
COPY .env /app
