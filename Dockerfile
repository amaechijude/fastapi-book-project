# Use a Python base image (with uvicorn and other essentials)
FROM python:3.12-alpine

# Set the working directory
WORKDIR /app

# Copy requirements.txt (if you have one)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the port (default FastAPI port is 8000, but you can change it)
EXPOSE 8000

# Use Uvicorn for production (recommended)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
