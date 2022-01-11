FROM cccs/assemblyline-v4-service-base:stable

ENV SERVICE_PATH TemplateService.TemplateService

#USER root
#RUN apt-get update && apt-get install -y my_debian_apt_dependency_package && rm -rf /var/lib/apt/lists/*
#RUN pip install --no-cache-dir --user my_pip_dependency && rm -rf ~/.cache/pip

USER assemblyline

WORKDIR /opt/al_service
COPY . .
