#Docker work environment

docker run -it --rm -v $PWD:/aws -w /aws --entrypoint /bin/bash amazon/aws-cli

yum install -y git
curl -Lo /usr/local/bin/kubectl "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && chmod +x /usr/local/bin/kubectl
curl -L https://releases.hashicorp.com/terraform/1.0.7/terraform_1.0.7_linux_amd64.zip | zcat >> /usr/local/bin/terraform && chmod +x /usr/local/bin/terraform

aws configure

terraform init
terraform plan
terraform apply

aws eks --region eu-west-1 update-kubeconfig --name eks-terraform
