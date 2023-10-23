# Terraform code to deploy an Azure Function App triggered by the Storage Queue message.

This Terraform code will create an Azure Function App and a new Python function. That function will be configured to be triggered after the Storage Queue receives a message.


# Prerequisites

> You need to install and properly configure Terraform 1.5 or later.


## Usage

- Clone this Git repository.
- Check and modify values in the **values.auto.tfvars** file.
- In the clonned directory run the following command.
> terraform init && terraform plan
- If the Terraform plan looks good for you, you can apply the changes by running:
> terraform apply --auto-approve


## Created resources

Terraform code and used command above will deploy the following Azure resources:
- Resource Group
- Log Analytics Workspace
- Application Insights
- Storage Account
-- Storage Queue
- Key Vault
-- Key Vault Secret
- App Service Plan
- Function App
-- Function based on Python v3.9


## Cleanup

Delete all resources created by this Terraform code.

- Navigate to the root of the clonned directory.
- Run the following command:
> terraform destroy --auto-approve
