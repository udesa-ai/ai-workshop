variable "gcp_project" {
  description = "The Google Cloud project ID"
  type = string
}

variable "bucket_name" {
  description = "Prefix of the tfstate bucket name"
  type = string
  default = "ai-workshop"
}

variable "zone" {
  description = "The Google Cloud zone"
  type = string
  default = "us-central1-a"  
}

variable "region" {
  description = "The Google Cloud region"
  type = string
  default = "us-central1"  
}

variable "location" {
  description = "The location of the tfstate bucket"
  type = string
  default = "US"
}

variable "storage_class" {
  description = "The storage class of the tfstate bucket"
  type = string
  default = "STANDARD"
}
