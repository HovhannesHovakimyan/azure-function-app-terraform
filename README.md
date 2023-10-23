
# Terraform code to deploy an Azure Function App triggered by the Storage Queue message.



This Terraform code will create an Azure Function App and a new Python function. That function will be configured to be triggered after the Storage Queue receives a message.




# Prerequisites



You need to install and properly configure the following:
> Terraform 1.5 or later.
> Azure CLI




## Usage (Deployment)



- Clone this Git repository.

- Check and modify values in the **values.auto.tfvars** file.
- From your terminal of choice log in to Azure with the following command:
> az login
> az account set --subscription **your subscription name or ID**
- Navigate to the clonned directory run the following command.

> terraform init && terraform plan

- If the Terraform plan looks good for you, you can apply the changes by running:

> terraform apply --auto-approve



## Testing the Function
- Use Terraform outputs to learn about the created resource names.
- ![Resource Group containing the created resources.](https://github.com/HovhannesHovakimyan/azure-function-app-terraform/blob/265753b4425f0110512733e9b60790f568689509/screenshots/ResourceGroup.png)
- Open the Function logs
- ![Showing Function logs output from Application Insights.](https://github.com/HovhannesHovakimyan/azure-function-app-terraform/blob/265753b4425f0110512733e9b60790f568689509/screenshots/FunctionLogs.png)
- Navigate to the Storage Queue and create a new message. That will trigger the Function.
- ![Creating a new message in the Storage Queue.](https://github.com/HovhannesHovakimyan/azure-function-app-terraform/blob/265753b4425f0110512733e9b60790f568689509/screenshots/StorageQueue.png)
- You should see the created message in the logs.




## Created resources



Terraform code and used command above will deploy and configure the following Azure resources:

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