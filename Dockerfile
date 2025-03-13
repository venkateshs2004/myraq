# Use a PyTorch image that includes CUDA (adjust version as needed)
FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-runtime


# Set the working directory in the container
WORKDIR /app

# Copy your requirements file into the container
COPY requirements.txt .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install --no-cache-dir --timeout 1000 -r requirements.txt
    

# Copy the rest of your project files into the container
COPY . .

# Expose a port (e.g., for Jupyter Lab)
EXPOSE 8888

# Set an environment variable (optional)
ENV PYTHONUNBUFFERED=1

# Start Jupyter Lab (or any command you prefer)
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
