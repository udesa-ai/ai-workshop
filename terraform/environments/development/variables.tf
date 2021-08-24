variable "gcp_project" {
  description = "Google Cloud project ID"
  type = string
}

variable "name_prefix" {
  description = "Name prefix for the resources"
  type = string
  default = "workshop"
}

variable "zone" {
  description = "Google Cloud zone"
  type = string
  default = "us-central1-a"
}

variable "region" {
  description = "Google Cloud region"
  type = string
  default = "us-central1"
}

variable "workshop_image" {
  description = "The workshop image name with all the dependencies"
  type = string
}

variable "machine_type" {
  description = "The machine type assigned to compute instances"
  type = string
  default = "n2-standard-1"
}

variable "compute_network" {
  description = "Network name to assign to compute instances"
  type = string
  default = "default"
}

variable "number_of_instances" {
  description = "Number of compute instances that will spawn"
  type = number
  default = 2
}

variable "source_ranges" {
  description = "IPv4/IPv6 prefixes to allow inbound traffic"
  type = list(string)
  default = [ "168.195.52.128/27" ]
}