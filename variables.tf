variable "list1" {
  description = "First list be used for permutations"
  type        = "list"
}

variable "list2" {
  description = "Second list used for permutations"
  type        = "list"
}

variable "format" {
  type    = "string"
  default = "%s_%s"
}
