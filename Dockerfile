FROM cccs/assemblyline-v4-service-base:stable

ENV SERVICE_PATH TemplateService.TemplateService

USER root
RUN apt-get update && rm -rf /var/lib/apt/lists/*
RUN apt-get install -y build-essential libffi-dev python3.7 python3.7-dev python3-pip automake autoconf libtool
RUN pip install --no-cache-dir --user assemblyline-v4-service && rm -rf ~/.cache/pip

USER assemblyline

WORKDIR /opt/al_service
COPY . .

USER root
