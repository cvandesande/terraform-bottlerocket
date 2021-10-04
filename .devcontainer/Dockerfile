# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.194.0/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version: bullseye, buster, stretch
ARG VARIANT=${VARIANT}
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
#RUN apt-get update && export DEBIAN_FRONTEND=noninteractive && \
#    apt-get -y install --no-install-recommends <your-package-list-here>

# Install ARGs
ARG KUBECTL_VERSION=${KUBECTL_VERSION}
ARG TF_VERSION=${TF_VERSION}

# Install awscli, terraform, kubectl, helm
RUN set -x; MACH=$(uname -m) \
  && ARCH=$(dpkg --print-architecture) \
  && curl -Lo /usr/local/bin/kubectl \
  https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/${ARCH}/kubectl \
  && chmod +x /usr/local/bin/kubectl \
  && curl -L \
  https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_${ARCH}.zip \
  | zcat >> /usr/local/bin/terraform \
  && chmod +x /usr/local/bin/terraform \
  && curl -Lo "awscliv2.zip" \
  https://awscli.amazonaws.com/awscli-exe-linux-${MACH}.zip \
  && unzip awscliv2.zip \
  && ./aws/install \
  && rm -rf awscliv2.zip /aws \
  && curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 \
  | bash
