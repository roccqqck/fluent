FROM fluent/fluentd:v1.12.0-debian-1.0
# Use root account to use apt
USER root
RUN ["gem", "install", "fluent-plugin-elasticsearch", "--no-document", "--version", "3.5.2"]
# COPY ./crt.pem /usr/local/share/ca-certificates/

RUN update-ca-certificates 

#RUN fluent-gem install fluent-plugin-elasticsearch
USER fluent
