variable "private_subnet_ids" {
  description = "(Required) IDs of the subnets to which the EKS worker nodes will be deployed"
  default     = []
}

variable "public_subnet_ids" {
  description = "(Required) IDs of the subnets to which the EKS load balancers will be deployed"
  default     = []
}

variable "id" {
  description = "(Optional) Unique identifier used to name all resources"
  default     = "default"
}

variable "tags" {
  description = "(Optional) Additional tags applied to all resources"
  default     = {}
}

variable "kubernetes_version" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#version"
  default     = ""
}

variable "trusted_ami_account" {
  description = "(Optional) ID of the account you trust AMIs from - defaulted to Amazon owned service account"
  default     = "602401143452"
}

variable "desired_size" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_node_group.html#desired_size"
  default     = "1"
}

variable "max_size" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_node_group.html#max_size"
  default     = "1"
}

variable "min_size" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_node_group.html#min_size"
  default     = "1"
}

variable "disk_size" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_node_group.html#disk_size"
  default     = "100" # we ran into various eviction issues at the default of 20
}

variable "enabled_cluster_log_types" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#enabled_cluster_log_types"
  default     = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
}

variable "log_retention_in_days" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#retention_in_days"
  default     = "90"
}

variable "oidc_thumbprint" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html#thumbprint_list"
  default     = ""
}

variable "instance_types" {
  description = "(Optional) https://www.terraform.io/docs/providers/aws/r/eks_node_group.html#instance_types"
  default     = ["t3.medium"]
}
