variable "workload_name" {
  description = "Name of the workload that the resource supports."
  type        = string
}

variable "data_classification" {
  description = "Sensitivity of data that the resource hosts."
  type        = string
}

variable "business_criticality" {
  description = "Business impact of the resource or supported workload."
  type        = string
}

variable "business_unit" {
  description = <<EOT
    Top-level division of your company that owns the subscription or workload that the resource 
    belongs to. In smaller organizations, this tag might represent a single corporate or shared 
    top-level organizational element."
  EOT
  type        = string
}

variable "ops_commitment" {
  description = "Level of operations support provided for the workload or resource."
  type        = string
}

variable "ops_team" {
  description = "Team accountable for day-to-day operations."
  type        = string
}

variable "application_name" {
  description = "Added granularity, if the workload is subdivided across multiple applications or services."
  type        = string
}

variable "approver" {
  description = "Person responsible for approving costs related to the resource. Must be an email."
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.approver))
    error_message = "The approver variable must be a valid email address."
  }
}

variable "budget_amount" {
  description = "Money approved for the application, service, or workload. In local currency."
  type        = string
  validation {
    condition     = can(regex("^[0-9]+(\\.[0-9]{1,2})?$", var.budget_amount))
    error_message = "The budget amount must be a positive number."
  }
}

variable "cost_center" {
  description = "Accounting cost center associated with the resource."
  type        = string
}

variable "environment" {
  description = "Deployment environment of the application, workload, or service."
  type        = string
}

variable "owner" {
  description = "Owner of the application, workload, or service."
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.owner))
    error_message = "The owner variable must be a valid email address."
  }
}

variable "requester" {
  description = "Owner of the application, workload, or service."
  type        = string
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.requester))
    error_message = "The requester variable must be a valid email address."
  }
}

variable "deployment_date" {
  description = "Date when the resource was deployed."
  type        = string
  validation {
    condition     = can(regex("^\\d{4}-\\d{2}-\\d{2}$", var.deployment_date))
    error_message = "The deployment date must be in YYYY-MM-DD format."
  }
}

variable "modified_date" {
  description = "Date when the resource was modified."
  type        = string
  validation {
    condition     = can(regex("^\\d{4}-\\d{2}-\\d{2}$", var.modified_date))
    error_message = "The modified date must be in YYYY-MM-DD format."
  }
}
