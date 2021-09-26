# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.194.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version: bullseye, buster, stretch
ARG VARIANT=${VARIANT}
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
#RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
#    apt-get -y install --no-install-recommends <your-package-list-here>

# Install ARGs
ARG AWS_URL=https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
ARG KUBECTL_VERSION=${KUBECTL_VERSION}
ARG KUBECTL_URL=https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl
ARG TF_VERSION=${TF_VERSION}
ARG TF_URL=https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip
ARG HELM_URL=https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3

# Install awscli, terraform, kubectl, helm
RUN set -x; curl -Lo /usr/local/bin/kubectl ${KUBECTL_URL} \
  && chmod +x /usr/local/bin/kubectl \
  && curl -L ${TF_URL} | zcat >> /usr/local/bin/terraform \
  && chmod +x /usr/local/bin/terraform \
  && curl ${AWS_URL} -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && ./aws/install \
  && rm -rf awscliv2.zip /aws \
  && curl ${HELM_URL} | bash
  