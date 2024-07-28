# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Install any needed packages specified in requirements
RUN pip install --no-cache-dir torch==1.13.1 transformers==4.23.1 diffusers==0.9.0 numpy Pillow

# Copy the current directory contents into the container at /app
COPY . /app/

# Set environment variables for Stable Diffusion
ENV PYTHONUNBUFFERED=1

# Run Stable Diffusion (replace with your actual entry point command)
CMD ["python", "scripts/stable_diffusion.py"]
