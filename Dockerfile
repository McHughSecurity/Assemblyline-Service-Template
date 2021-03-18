FROM cccs/assemblyline-v4-service-base:latest

# Set the service path
ENV SERVICE_PATH result_sample.ResultSample

# By default, the base service container as the assemblyline user as the running user
#  switch to root to perform installation of dependancies
USER root

# See that we all these operations in one line to reduce 
#  the number of container layers and size of the container
RUN apt-get update && apt-get install -y my_debian_apt_dependency_package && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir --user my_pip_dependency && rm -rf ~/.cache/pip

# Change to the assemblyline user to make sure your service does not run as root
USER assemblyline

# Copy the service code in the service directory
WORKDIR /opt/al_service
COPY assemblyline_result_sample_service .
