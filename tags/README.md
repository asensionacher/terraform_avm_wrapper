<!-- BEGIN_TF_DOCS -->
# Tags module

This module is created for me as a helper for never forgetting a tag on my resources. Probably this don't make sense for you, but for me it is the way for adding all the tags I consider necessary for my deployments.

<!-- markdownlint-disable MD033 -->
## Requirements

No requirements.

## Providers

No providers.

## Resources

No resources.

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_application_name"></a> [application\_name](#input\_application\_name)

Description: Added granularity, if the workload is subdivided across multiple applications or services.

Type: `string`

### <a name="input_approver"></a> [approver](#input\_approver)

Description: Person responsible for approving costs related to the resource. Must be an email.

Type: `string`

### <a name="input_budget_amount"></a> [budget\_amount](#input\_budget\_amount)

Description: Money approved for the application, service, or workload. In local currency.

Type: `string`

### <a name="input_business_criticality"></a> [business\_criticality](#input\_business\_criticality)

Description: Business impact of the resource or supported workload.

Type: `string`

### <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit)

Description:     Top-level division of your company that owns the subscription or workload that the resource   
    belongs to. In smaller organizations, this tag might represent a single corporate or shared   
    top-level organizational element."

Type: `string`

### <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center)

Description: Accounting cost center associated with the resource.

Type: `string`

### <a name="input_data_classification"></a> [data\_classification](#input\_data\_classification)

Description: Sensitivity of data that the resource hosts.

Type: `string`

### <a name="input_deployment_date"></a> [deployment\_date](#input\_deployment\_date)

Description: Date when the resource was deployed.

Type: `string`

### <a name="input_environment"></a> [environment](#input\_environment)

Description: Deployment environment of the application, workload, or service.

Type: `string`

### <a name="input_modified_date"></a> [modified\_date](#input\_modified\_date)

Description: Date when the resource was modified.

Type: `string`

### <a name="input_ops_commitment"></a> [ops\_commitment](#input\_ops\_commitment)

Description: Level of operations support provided for the workload or resource.

Type: `string`

### <a name="input_ops_team"></a> [ops\_team](#input\_ops\_team)

Description: Team accountable for day-to-day operations.

Type: `string`

### <a name="input_owner"></a> [owner](#input\_owner)

Description: Owner of the application, workload, or service.

Type: `string`

### <a name="input_requester"></a> [requester](#input\_requester)

Description: Owner of the application, workload, or service.

Type: `string`

### <a name="input_workload_name"></a> [workload\_name](#input\_workload\_name)

Description: Name of the workload that the resource supports.

Type: `string`

## Optional Inputs

No optional inputs.

## Outputs

The following outputs are exported:

### <a name="output_tags"></a> [tags](#output\_tags)

Description: Tags for the resources.

## Modules

No modules.

## Disclaimer

This module is intended to be used for the wrappers on my understanding on how the resources have to deployed, named, governed and so on. You are free to do whatever you want with this, but I **don't recommend** to use it directly to your environment without being sure it fits in your environment.
<!-- END_TF_DOCS -->