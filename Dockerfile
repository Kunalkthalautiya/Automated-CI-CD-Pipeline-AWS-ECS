# Use the latest stable Python version
FROM python:3.11

# Set the working directory inside the container
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire project
COPY . .

# Expose the port on which the Flask app runs
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
