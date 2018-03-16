# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Define environment variable
ENV NAME World

ENV MODEL_NAME <model_name>
ENV MODEL_SERVER_HOST <host>
ENV MODEL_SERVER_PORT <port>
ENV ROOT_CERT '<cert>'

# Run app.py when the container launches
CMD ["python", "app.py"]
