variable "prefix" {
  type        = list(string)
  default     = []
  description = "It is not recommended that you use prefix by azure you should be using a suffix for your resources."
}

variable "purpose" {
  type        = string
  description = "Purpose of the resource. This is used to identify the resource in the naming convention."
  validation {
    condition     = length(var.purpose) > 2 && length(var.purpose) < 7
    error_message = "The purpose variable must have between 3 and 6 characters."
  }
}

variable "environment" {
  type        = string
  description = "Environment of the resource. This is used to identify the resource in the naming convention."
  validation {
    condition     = contains(["d", "t", "p", "u", "s", "q"], var.environment)
    error_message = <<EOT
      The environment variable must be one of the following: "d", "t", "p", "u", "s", "q", where "d" is "Development", "t" is "Test", 
      "p" is "Production", "u" is "UAT", "s" is "Staging", and "q" is "QA".
    EOT
  }
}

variable "region" {
  type        = string
  description = "Lowercase GeoCode of the region where the resource will be deployed."

  validation {
    condition = contains([
      "ea", "wus", "eus", "cus", "eus2", "ncus", "scus", "ne", "we", "sea", "jpe", "jpw", "brs",
      "ae", "ase", "inc", "ins", "cnc", "cne", "wcus", "wus2", "ukw", "uks", "ccy", "ecy", "krs",
      "krc", "frc", "frs", "acl", "acl2", "uac", "uan", "san", "saw", "inw", "nwe", "nww", "szn",
      "szw", "gn", "gwc", "sdc", "sds", "bse", "wus3", "jic", "jiw", "qac", "plc", "mys", "twn",
      "twnr", "ilc", "itn", "mxc", "spc", "clc", "nzn", "myw", "idc", "use", "ugv", "uga", "ugt",
      "udc", "ude", "bjb", "sha", "bjb2", "sha2", "bjb3", "sha3", "bj2r"
    ], lower(var.region))

    error_message = <<EOT
      Invalid region code. Use the lowercase GeoCode (e.g., "wus", "eus", "ne").
      Refer to the official list of supported regions for valid values in https://learn.microsoft.com/en-us/azure/backup/scripts/geo-code-list.
    EOT
  }
}

variable "unique-seed" {
  description = "Custom value for the random characters to be used"
  type        = string
  default     = ""
}

variable "unique-length" {
  description = "Max length of the uniqueness suffix to be added"
  type        = number
  default     = 4
}

variable "unique-include-numbers" {
  description = "If you want to include numbers in the unique generation"
  type        = bool
  default     = true
}
