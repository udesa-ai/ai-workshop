variable "number_of_instances" {
  description = "Number of compute instances that will spawn"
  type = number
}

variable "workshop_image" {
  description = "The workshop image name with all the dependencies"
  type = string
}

variable "region" {
  description = "Google Cloud region to deploy the workshop"
  type = string
  default = "us-central1"
}

variable "distribution_zones" {
  description = "Google Cloud zones to distribute compute instances"
  type = list(string)
  default = [ "us-central1-a", "us-central1-b" ]
}

variable "name_prefix" {
  description = "Name prefix for the resources"
  type = string
}

variable "machine_type" {
  description = "The machine type assigned to compute instances"
  type = string
  default = "n1-standard-2"
}

variable "compute_network" {
  description = "Network name to assign to compute instances"
  type = string
  default = "default"
}

variable "source_ranges" {
  description = "IPv4/IPv6 prefixes to allow inbound traffic"
  type = list(string)
}