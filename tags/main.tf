locals {
  tags_output = {
    WorkloadName        = lower(var.workload_name)
    DataClassification  = lower(var.data_classification)
    BusinessCriticality = lower(var.business_criticality)
    BusinessUnit        = lower(var.business_unit)
    OpsCommitment       = lower(var.ops_commitment)
    OpsTeam             = lower(var.ops_team)
    ApplicationName     = lower(var.application_name)
    Approver            = lower(var.approver)
    BudgetAmount        = var.budget_amount
    CostCenter          = lower(var.cost_center)
    Environment         = lower(var.environment)
    Owner               = lower(var.owner)
    Requester           = lower(var.requester)
    DeploymentDate      = var.deployment_date
    ModifiedDate        = var.modified_date
  }
}
