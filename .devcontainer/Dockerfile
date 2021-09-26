# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.194.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version: bullseye, buster, stretch
ARG VARIANT="bullseye"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
#RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
#    apt-get -y install --no-install-recommends <your-package-list-here>

# Install latest kubectl
RUN curl -Lo /usr/local/bin/kubectl \
     "https://dl.k8s.io/release/$(curl -L -s \
     https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
     chmod +x /usr/local/bin/kubectl

# Install Terraform
RUN set -x; curl -L \
     https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip \
     | zcat >> /usr/local/bin/terraform && chmod +x /usr/local/bin/terraform

# Install awscliv2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" \
     -o "awscliv2.zip" && \
      unzip awscliv2.zip && \
     ./aws/install && \
     rm awscliv2.zip