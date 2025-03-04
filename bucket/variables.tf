variable "location"{
    description = "Região onde os recursos  serão criados na Azure""
    type = "string"
    default = "West Europe"
}

variable "account_tier" {
    description = "Tier da Storage Account"
    type = "string"
    default = "Standard"
}

variable "account_replication_type" {
    description = "Tipo de replicação de dados do Storage Account"
    type = "string"
    default = "LRS"
}