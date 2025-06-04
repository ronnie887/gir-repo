# Use an official lightweight Python image
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Copy files
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY flask-app.py .

# Expose port 80 and run app
EXPOSE 80
CMD ["python", "flask-app.py"]
