variable "project" {
  description = "GCP Project ID"
  type        = string
  default = "${secrets.TF_PROJECTID}"
}

variable "data_lake_bucket" {

}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  type        = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type        = string

}


variable "account_key" {
  type = string
}

variable "zone" {
  type = string
}

variable "wkstation_machine_type" {
  type = string

}

variable "wkstation_boot_disk_size_gb" {
  type = number
  

}


variable "label" {

}

variable "service_account_email" {

}




variable "os_image" {
    type = string
  
}

variable "machine_name" {
  type = string
}


variable "desired_status" {
    type = string
  
}