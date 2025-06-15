variable "key_name" {
  type        = string
  description = "The name for the key pair"
}

variable "public_key" {
  type        = string
  description = "The public key material"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Tags to apply to the key pair"
}
