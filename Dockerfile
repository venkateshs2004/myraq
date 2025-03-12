# Use the latest stable Python image (you can change to 3.12 if desired)
FROM python:3.12

# Set working directory in the container
WORKDIR /app

# Copy the requirements file to the container
COPY requirements.txt .

# Upgrade pip and install the dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --timeout 500 -r requirements.txt


# Copy the rest of the project files into the container
COPY . .

# Expose port 8888 for Jupyter Lab
EXPOSE 8888

# Set environment variable to run Python unbuffered (helps with logging)
ENV PYTHONUNBUFFERED=1

# Start Jupyter Lab when the container launches
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
