# Docker work environment
```
# If not using vscode containers
docker run -it --rm -v $PWD:/aws -w /aws --entrypoint /bin/bash amazon/aws-cli

aws configure

terraform init
terraform plan
terraform apply

# Configure kubectl
aws eks --region eu-west-1 update-kubeconfig --name eks-terraform
```
