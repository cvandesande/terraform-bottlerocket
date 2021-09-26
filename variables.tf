variable "region" {
  description = "AWS region"
  default     = "eu-west-1"
}

variable "cluster_name" {
  default = "eks-terraform"
}

variable "cluster_version" {
  description = "Kubernetes version"
  default = "1.21"
}

variable "instance_type" {
  description = "Instance size"
  default = "t3a.small"
}

variable "k8s_service_account_namespace" {
  description = "Autoscaler service account namespace"
  default = "kube-system"
}

variable "k8s_service_account_name" {
  description = "Autoscaler service account name"
  default = "cluster-autoscaler-aws-cluster-autoscaler-chart"
}
## Additional users

#variable "map_accounts" {
#  description = "Additional AWS account numbers to add to the aws-auth configmap."
#  type        = list(string)
#
#  default = [
#    "777777777777",
#    "888888888888",
#  ]
#}

#variable "map_roles" {
#  description = "Additional IAM roles to add to the aws-auth configmap."
#  type = list(object({
#    rolearn  = string
#    username = string
#    groups   = list(string)
#  }))
#
#  default = [
#    {
#      rolearn  = "arn:aws:iam::66666666666:role/role1"
#      username = "role1"
#      groups   = ["system:masters"]
#    },
#  ]
#}

#variable "map_users" {
#  description = "Additional IAM users to add to the aws-auth configmap."
#  type = list(object({
#    userarn  = string
#    username = string
#    groups   = list(string)
#  }))
#
#  default = [
#    {
#      userarn  = "arn:aws:iam::66666666666:user/user1"
#      username = "user1"
#      groups   = ["system:masters"]
#    },
#    {
#      userarn  = "arn:aws:iam::66666666666:user/user2"
#      username = "user2"
#      groups   = ["system:masters"]
#    },
#  ]
#}
