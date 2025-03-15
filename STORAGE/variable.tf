variable "stgnames" {
  type = list(string)
  default = [ "stg1rohit" , "stg2rohit" ]
}

variable "rg_name" {
    type = string
    default = "Devops_TF"
    description = "This is the rg name for the vnet"
}