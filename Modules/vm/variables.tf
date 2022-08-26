 variable "vm_name"{
    type=string
     default = "test"
 }
 variable "machine_type" {
  type= string
   default = "e2-medium"
 }
 
variable "image" {

 default = "debian-cloud/debian-9"
}
variable "project_id" {
 default = "fresh-capsule-324021"
}
variable "zone" {
 type = string
 default = "us-central1"
}

