FROM cccs/assemblyline-v4-service-base:stable

ENV SERVICE_PATH TemplateService.TemplateService

#USER root
#RUN apt-get update && rm -rf /var/lib/apt/lists/*

USER assemblyline

WORKDIR /opt/al_service
COPY . .

USER root
