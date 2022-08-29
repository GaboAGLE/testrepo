 variable "vm_name"{
    type=string
     default = "test"
 }
 variable "machine_type" {
  type= string
   default = "e2-medium"
 }
 
variable "image" { 
    initialize_params {
      image = "debian-cloud/debian-11"
    }
}
variable "project_id" {
 default = "bc-terraform-poc"
}
variable "zone" {
 type = string
 default = "us-central1"
}

