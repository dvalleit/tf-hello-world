
variable "name" {
  description = "Name"
  type        = string
}

variable "loc" {
  description = "Location"
  type        = string
}

variable "rg" {
  description = "Resource Group"
  type        = string
}

variable "tenant" {
  description = "Tenant"
  type        = string
}

variable "azclioid" {
  description = "OID"
  type        = string
}

variable "key" {
  description = "key required"
  type        = bool
  default     = false
}

variable "des_enabled" {
  description = "des enabled"
  type        = bool
  default     = false
}