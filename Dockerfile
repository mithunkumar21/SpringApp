# Step 1: Use the official Python base image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements file to the container
COPY requirements.txt .

# Step 4: Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the application code into the container
COPY . .

# Step 6: Expose the application port (default Flask port 5000)
EXPOSE 5000

# Step 7: Set the command to run the application
CMD ["python", "app.py"]
