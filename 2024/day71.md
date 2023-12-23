---
title: '#90DaysOfDevOps - Azure For DevSec Operators - Day 71'
published: false
description: 90DaysOfDevOps - Microsoft Azure
tags: 'devops, 90daysofdevops, learning'
Author: Kevin Evans 
cover_image: null
canonical_url: null
id: 1048718
---

# Azure For Developer Security Operators (DevSecOps)

![Static Badge](https://img.shields.io/badge/Licence%3ANonCommercial-ShareAlike-blue)



## Description

Hello and welcome to day 71 of the 90-day challenge. You should congratulate yourself on making it this far 😊. Learning is not a sprint; it's a marathon! In this section, we will explore Microsoft Azure and the tools, concepts, and methods for securely deploying services in Azure.

## Table of Contents

- [Account Sign Up](https://azure.microsoft.com/free)
- [Infrastructure Development Tools](#usage)
- [Deployment Methods](#contributing)
- [IaC for Azure](#license)
- [Deployment Scenario](#contact)

## Account Sign Up

Signing up for a free Azure account is relatively straightforward. Here's a general step-by-step guide to get you started:

1. Visit the Azure website: Go to the Microsoft [Azure website](https://azure.microsoft.com/free).

2. Select "Start for free": Look for an option like "Start for free" or "Start free account" on the homepage. Click on it.

3. Sign in or create a Microsoft account: If you already have a Microsoft account (like Outlook, Xbox, or Hotmail), sign in with those credentials. If not, create a new Microsoft account by providing the required information.

4. Provide necessary information: You'll be asked to enter some personal information and details like your name, email address, country, phone number, and possibly a credit card for verification purposes. Don't worry; the free account won't incur charges unless you specifically upgrade to a paid service.

5. Verification: Microsoft may require phone or email verification for security purposes. Follow the instructions to verify your account.

6. Agree to terms and conditions: Read and agree to the terms of service and privacy policy.

7. Start using your Azure account: Once your account is created and verified, you'll have access to your Azure dashboard, where you can start exploring the services available under the free tier.

Remember, the free Azure account comes with certain limitations and a trial period. Be mindful of usage and services you activate to stay within the free tier's boundaries. Always check the Azure pricing page for the latest details on what is included in the free tier and any potential charges beyond that.

## Infrastructure Development Tools

These scripts will install the necessary dependencies to facilitate the deployment of Infrastructure as Code into Azure using Terraform, Bicep, PowerShell, and Azure CLI. 

This method will focus on Windows OS.

System Requirements:

Operating System: Windows 11 Version 22H2 (OS Build 22621.2715) or higher


Package Managers:

- [Chocolatey](https://docs.chocolatey.org/en-us/choco/setup) 

### Chocolatey Packages (for Windows Desktop):

- [PowerShell](https://community.chocolatey.org/packages/powershell-core)
- [Git](https://community.chocolatey.org/packages/git)
- [VSCode](https://community.chocolatey.org/packages/vscode)
- [Azure CLI](https://community.chocolatey.org/packages/azure-cli)
- [Terraform](https://community.chocolatey.org/packages/terraform)

## Chocolatey Package Installation Script (PowerShell)
This script will deploy the Chocolatey packages above:
```
choco install powershell-core -y
choco install git -y
choco install vscode -y
choco install azure-cli -y
choco install terraform -y
```
## Azure CLI Packages (Bicep Install)
Run the following command to install Azure Bicep from the Powershell 7 terminal, once Azure CLI is installed.

#### PowerShell
```
az upgrade
```
```
az bicep install
```

## Deployment Methods


In Azure, deploying applications through DevSecOps methodologies offers various strategies, each with distinct advantages. Infrastructure as Code (IaC) allows for defining and managing infrastructure using code-based configurations, enabling consistent and repeatable deployments. This method utilizes tools like Azure Resource Manager (ARM) templates, Bicep or Terraform, streamlining provisioning and maintenance. 

Leveraging APIs for deployment facilitates automation by integrating Azure services programmatically, granting fine-grained control and customization. On the other hand, deploying via the Azure portal provides a user-friendly interface suitable for simpler deployments or quick testing. This method is intuitive and accessible, allowing users to visually configure resources and manage deployments without extensive coding knowledge. 

The combination of these deployment methods within a DevOps framework ensures flexibility, efficiency, and scalability in deploying applications onto Azure's robust cloud infrastructure.

### Infrastructure as Code Overview In Azure


Deploying on Azure with Bicep involves using a domain-specific language for infrastructure as code, streamlining Azure resource provisioning and management. Conversely, Terraform offers a multi-cloud approach, allowing deployment to Azure along with other cloud providers, offering flexibility and unified infrastructure orchestration.

Checkout these learning resources on deploying Azure resources with IaC:

- [Bicep On Azure](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview?tabs=bicep)
- [Terraform On Azure](https://learn.microsoft.com/en-us/azure/developer/terraform/overview)
- [Terraform AzAPI provider](https://learn.microsoft.com/en-us/azure/developer/terraform/overview-azapi-provider)
- [Visual Studio Code Bicep Extension](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-bicep)
- [Visual Studio Code Terraform Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform)

## Securing Infrastructure as Code Practices

Securing Infrastructure as Code (IaC) deployments on Azure, encompassing tools like Bicep and Terraform, is paramount in safeguarding cloud environments. Implementing robust security measures within IaC ensures the resilience of Azure deployments against potential threats and vulnerabilities.

 By embedding security practices into the codebase, organizations fortify their infrastructure's integrity from inception, mitigating risks associated with misconfigurations or unauthorized access. This proactive approach, integrating security into the deployment pipeline, not only enhances compliance but also fosters a resilient and dependable Azure ecosystem for applications and services.

 The tools used as part of a secure DevOps workflow should adhere to the following principles:
- Tools must be integrated into the CI/CD pipeline.
- Tools must not require security expertise.
- Tools must avoid a high false-positive rate of reporting issues.

There is a number of ways automating security into your Azure DevOps or GitHub workflow using [Defender for Cloud DevOps](https://learn.microsoft.com/en-us/azure/defender-for-cloud/defender-for-devops-introduction) or [Cloud Security Posture Management (CPSM)](https://learn.microsoft.com/en-us/azure/defender-for-cloud/concept-cloud-security-posture-management)

### Static Code Analysis Security Tools

Here is a list of useful security tools to scan static code and misconfigurations.

Links:
- [Checkov](https://github.com/bridgecrewio/checkov)
- [Terrascan](https://github.com/tenable/terrascan)
- [CodeQL](https://codeql.github.com/)
- [Microsoft DevSkim](https://github.com/Microsoft/DevSkim)
- [VSTS security marketplace](https://marketplace.visualstudio.com/search?term=security&target=AzureDevOps&category=All%20categories&sortBy=Relevance)
- [Security Code Scan](https://security-code-scan.github.io/)
- [Microsoft BinSkim](https://github.com/Microsoft/binskim#getting-started-as-a-user)


## Deployment Scenario 
In this scenario we will deploy a simple AKS cluster using both Bicep & Terraform IaC languages. 

Ensure you have logged into your Azure environment using the AZ CLI.
### Azure CLI
```
az login
```

### AKS Cluster Deployment Using Bicep

Here's a basic Bicep file to deploy a simple AKS (Azure Kubernetes Service) cluster. This example is a flat manifest file:

- Main manifest file

This Bicep template will create an AKS cluster with:

- Cluster Name: myAKSCluster (you can change this)
- Location: East US (you can change this)
- Disk Size: 0 (you can adjust this)
- Node Count: 3 nodes (you can adjust this)
- Node VM Size: Standard_D2s_v3 (you can change this)
- DNS Prefix: You will be prompted during the deployment command
- Username: You will be prompted during the deployment command
- ssh-rsa key: You will be prompted during the deployment command

You can modify the parameters as needed, like the location, cluster name, node count, VM size, etc.

Always ensure you have the necessary permissions and credentials to create resources in your Azure subscription.

#### main.bicep
```@description('The name of the Managed Cluster resource.')
param clusterName string = 'myAKSCluster'

@description('The location of the Managed Cluster resource.')
param location string = resourceGroup().location

@description('Optional DNS prefix to use with hosted Kubernetes API server FQDN.')
param dnsPrefix string

@description('Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 will apply the default disk size for that agentVMSize.')
@minValue(0)
@maxValue(1023)
param osDiskSizeGB int = 0

@description('The number of nodes for the cluster.')
@minValue(1)
@maxValue(50)
param agentCount int = 3

@description('The size of the Virtual Machine.')
param agentVMSize string = 'standard_d2s_v3'

@description('User name for the Linux Virtual Machines.')
param linuxAdminUsername string

@description('Configure all linux machines with the SSH RSA public key string. Your key should include three parts, for example \'ssh-rsa AAAAB...snip...UcyupgH azureuser@linuxvm\'')
param sshRSAPublicKey string

resource aks 'Microsoft.ContainerService/managedClusters@2022-05-02-preview' = {
  name: clusterName
  location: location
  identity: {
    type: 'SystemAssigned'
  }
  properties: {
    dnsPrefix: dnsPrefix
    agentPoolProfiles: [
      {
        name: 'agentpool'
        osDiskSizeGB: osDiskSizeGB
        count: agentCount
        vmSize: agentVMSize
        osType: 'Linux'
        mode: 'System'
      }
    ]
    linuxProfile: {
      adminUsername: linuxAdminUsername
      ssh: {
        publicKeys: [
          {
            keyData: sshRSAPublicKey
          }
        ]
      }
    }
  }
}

output controlPlaneFQDN string = aks.properties.fqdn
```
### Deployment Steps
Remember to have the Azure CLI and Bicep installed, then you can deploy this Bicep file using the Azure CLI with the following commands:

#### Step 1: Resource Group 

The 1st resource we need to create is a resource group to contain all our resources during the deployment workflow:

```
az group create --name myResourceGroup --location eastus
```

#### Step 2: Create SSH Key Pairs

Like any other Linux based system we need to create a SSH key pair to access the cluster. Further down the line we will need to present our public key as string parameter during deployment.

#### Azure CLI
```# Create an SSH key pair using Azure CLI
az sshkey create --name "mySSHKey" --resource-group "myResourceGroup"
```

```# Create an SSH key pair using ssh-keygen
ssh-keygen -t rsa -b 4096
```

#### Step 3: Bicep Deployment Commands
After you have made changes to parameters (or leave it as default). You can run the following command to deploy your AKS cluster:

#### Azure CLI
```
az deployment group create --resource-group myResourceGroup --template-file main.bicep --parameters dnsPrefix=<dns-prefix> linuxAdminUsername=<linux-admin-username> sshRSAPublicKey='<ssh-key>'
```

You will need to provide the following values in the  deployment command:

- DNS prefix: Enter a unique DNS prefix for your cluster, such as myakscluster.
- Linux Admin Username: Enter a username to connect using SSH, such as azureuser.
- SSH RSA Public Key: Copy and paste the public part of your SSH key pair (by default, the contents of ~/.ssh/id_rsa.pub).

Once your deployment is complete, you can validate this by either checking output in your terminal or by visually checking your resources in the [Azure Portal](www.portal.azure.com)

#### Step 4: Connect To Your Cluster

In order to connect to your cluster we need install the Azure kubectl tools, using Azure CLI.

#### Azure CLI
```
az aks install-cli
```
We need to configure kubectl to connect to your freshly deployed AKS cluster using the az aks get-credentials command. The following command will retrieve your AKS cluster credentials and configure kubectl to use them.

#### Azure CLI
```
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
```
Validate the connection to your cluster using the kubectl get command. This command will output a list of the cluster nodes.

#### Azure CLI
```
kubectl get nodes
```


### AKS Cluster Deployment Using Terraform

Here's a basic Terraform module to deploy a simple AKS (Azure Kubernetes Service) cluster. This example is a basic terraform module structure consisting of 3 files:

- main.tf (Main manifest file)
- variables.tf (Variables configuration file)
- main.tf (AKS module manifest file)

This Terraform template will create an AKS cluster with:

- Cluster Name: myAKSCluster (you can change this)
- Location: East US (you can change this)
- Disk Size: 0 (you can adjust this)
- Node Count: 3 nodes (you can adjust this)
- Node VM Size: Standard_D2s_v3 (you can change this)
- DNS Prefix: "e.g myakscluster" (you can change this)


You can modify the parameters as needed, like the location, cluster name, node count, VM size, etc.

Always ensure you have the necessary permissions and credentials to create resources in your Azure subscription.

#### Folder Structure

We will use the following nested folder directory structure for this scenario:
```
├── Terraform
│   ├── modules
│   │   ├── aks├── main.tf
│   ├── main.tf
│   ├── variables.tf
```

#### Terraform Manifest Files:

#### main.tf (top level)
```
provider "azurerm" {
  features {}
}



module "aks" {
  source = "./modules/aks"

  location     = var.location
  cluster_name = var.cluster_name
  node_count   = var.node_count
  node_vm_size = var.node_vm_size
  dns_prefix   = var.dns_prefix
}
```
#### variables.tf
```
variable "location" {
  description = "The Azure region in which to create resources."
  default     = "East US"
}

variable "cluster_name" {
  description = "The name of the AKS cluster."
  default     = "myAKSCluster"
}

variable "node_count" {
  description = "The number of nodes in the AKS cluster."
  default     = 3
}

variable "node_vm_size" {
  description = "The size of the VMs in the AKS cluster."
  default     = "Standard_D2s_v3"
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster."
  default     = "myaksclusterdns"
}
```
#### main.tf (aks sub module)
```
variable "location" {}
variable "cluster_name" {}
variable "node_count" {}
variable "node_vm_size" {}
variable "dns_prefix" {}

resource "azurerm_resource_group" "aks" {
  name     = "${var.cluster_name}-rg"
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.cluster_name
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.node_vm_size
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
}
```

### Deployment Steps
Remember to have the Azure CLI and Terraform installed, then you can deploy this Terraform manifest using the Azure CLI / PowerShell  with the following commands:

Tip: Log into the Azure from the terminal using ```az login``` before proceeding with the following steps.

#### Step 1: Initializing Terraform  

From your terminal, change the working directory to where your terraform code is located.

e.g ```cd c:\dev\terraform```

Initalize terraform by running the following command:

```
terraform init
```

#### Step 2: Produce A Manifest Plan

As terraform is declarative language, we can perform a dry run of our desired state from our manifest files by performing the following command: 

```
terraform plan
```
You will be presented with an execution plan similar to the one below :
```
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # module.aks.azurerm_kubernetes_cluster.aks_cluster will be created
  + resource "azurerm_kubernetes_cluster" "aks_cluster" {
      + api_server_authorized_ip_ranges     = (known after apply)
      + dns_prefix                          = "myaksclusterdns"
      + fqdn                                = (known after apply)
      + http_application_routing_zone_name  = (known after apply)
      + id                                  = (known after apply)
      + image_cleaner_enabled               = false
      + image_cleaner_interval_hours        = 48
      + kube_admin_config                   = (sensitive value)
      + kube_admin_config_raw               = (sensitive value)
      + kube_config                         = (sensitive value)
      + kube_config_raw                     = (sensitive value)
      + kubernetes_version                  = (known after apply)
      + location                            = "eastus"
      + name                                = "myAKSCluster"
      + node_resource_group                 = (known after apply)
      + node_resource_group_id              = (known after apply)
      + oidc_issuer_url                     = (known after apply)
      + portal_fqdn                         = (known after apply)
      + private_cluster_enabled             = false
      + private_cluster_public_fqdn_enabled = false
      + private_dns_zone_id                 = (known after apply)
      + private_fqdn                        = (known after apply)
      + public_network_access_enabled       = true
      + resource_group_name                 = "myAKSCluster-rg"
      + role_based_access_control_enabled   = true
      + run_command_enabled                 = true
      + sku_tier                            = "Free"
      + support_plan                        = "KubernetesOfficial"
      + tags                                = {
          + "Environment" = "Production"
        }
      + workload_identity_enabled           = false

      + default_node_pool {
          + kubelet_disk_type    = (known after apply)
          + max_pods             = (known after apply)
          + name                 = "default"
          + node_count           = 3
          + node_labels          = (known after apply)
          + orchestrator_version = (known after apply)
          + os_disk_size_gb      = (known after apply)
          + os_disk_type         = "Managed"
          + os_sku               = (known after apply)
          + scale_down_mode      = "Delete"
          + type                 = "VirtualMachineScaleSets"
          + ultra_ssd_enabled    = false
          + vm_size              = "Standard_D2s_v3"
          + workload_runtime     = (known after apply)
        }

      + identity {
          + principal_id = (known after apply)
          + tenant_id    = (known after apply)
          + type         = "SystemAssigned"
        }
    }

  # module.aks.azurerm_resource_group.aks will be created
  + resource "azurerm_resource_group" "aks" {
      + id       = (known after apply)
      + location = "eastus"
      + name     = "myAKSCluster-rg"
    }

Plan: 2 to add, 0 to change, 0 to destroy.
```
When the terraform plan completes successfully, this represents a good sign that our code will correctly deploy. According to our declared state in the manifest directory. 

#### Step 3: Terraform Deployment Commands

The next step is to deploy our Azure resources using the following command in our working directory:
```
terraform apply
```
The terraform apply command will run through the plan process again, followed by a prompt confirmation to proceed with the summarized changes.

e.g
```
Plan: 2 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes
  ```

Enter yes for the deployment to execute. 

Once the deployment is complete you should be presented with confirmation output like below: 
```
module.aks.azurerm_kubernetes_cluster.aks_cluster: Creation complete after 3m38s [id=/subscriptions/guid/resourceGroups/myAKSCluster-rg/providers/Microsoft.ContainerService/managedClusters/myAKSCluster]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
```


#### Step 4: Connect To Your Cluster

In order to connect to your cluster we need install the Azure kubectl tools, using Azure CLI.

#### Azure CLI
```
az aks install-cli
```
We need to configure kubectl to connect to your freshly deployed AKS cluster using the az aks get-credentials command. The following command will retrieve your AKS cluster credentials and configure kubectl to use them.

#### Azure CLI
```
az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
```
Validate the connection to your cluster using the kubectl get command. This command will output a list of the cluster nodes.

#### Azure CLI
```
kubectl get nodes
```











## Contributing

Guidelines for contributing to the project and how to get involved.

## License

This project is licensed under the ![Static Badge](https://img.shields.io/badge/NonCommercial-ShareAlike-blue)


## Contact

- Website: [codetocloud](http://codetocloud.tech)
- GitHub: [github.com/kevinevans1](https://github.com/kevinevans1)
