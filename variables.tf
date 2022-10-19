#resources
variable "name"{
    type = string
    default = "javeed-resources"
}

variable "location"{ 
    type = string
    default = "West Europe"
}

#network
variable "network" {
    type = string
    default = "javeed-network"
}
 
variable "internal" {
    type = string
    default = "javeed-subnet"
}

#network_interface
variable "test"{
    type  = string
    default = "testconfiguration1"
}
variable "private_ip"{
    type = string
    default = "Dynamic"
}

#vm
variable "vm_size"{
    type = string
    default = "Standard_DS1_v2"
}

# cluster
variable "cluster" {
    type = string
    default = "javeed"
}
variable "agent_count" {
  type = number
  default = 1
}
variable "size"{
  type = string
  default = "Standard_D2_v2"

}

#variable "app_id"{
  #type = string
  #default = "b8b50a6e-3b2c-4175-be98-076403f2942f"
#}
  

#variable "app_secret"{
  #type = string
  #default = "721cfa36-222d-4694-b78e-52efb75320fb"
#}