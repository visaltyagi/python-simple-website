# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Copy the application code into the container
COPY app.py .
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt

# Expose the port the app will run on
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]
