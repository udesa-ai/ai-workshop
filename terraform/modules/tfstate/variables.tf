variable "bucket_name" {
  description = "The name of the bucket to save the tfstate"
  type = string
}

variable "location" {
  description = "GCP location to deploy the bucket"
  type = string
  default = "US"
}

variable "storage_class" {
  description = "The storage class to use for the tfstate bucket"
  type = string
  default = "STANDARD"
}