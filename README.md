# Terraform-Azure-VMs

This repository contains Terraform configuration files to provision both Windows and Linux Virtual Machines (VMs) in Microsoft Azure.

Terraform is an Infrastructure as Code (IaC) tool that allows you to build, change, and version infrastructure safely and efficiently.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- You have installed [Terraform](https://www.terraform.io/downloads.html) (version 0.14.0 or later).
- You have installed [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (version 2.0.80 or later).
- You have an active Azure account. If you don't have one, you can create a free account [here](https://azure.microsoft.com/en-us/free/).

## Setup

1. Clone the repository:

```bash
git clone https://github.com/your-repo/Terraform-Azure-VMs.git
cd Terraform-Azure-VMs




## Outline

# Repository Outline

This repository contains the Terraform configurations required to create both Windows and Linux Virtual Machines (VMs) in Azure, adhering to modern Infrastructure as Code (IaC) best practices. It uses a modular structure to increase the reusability and maintainability of the code.

## Folders and Files

- **main.tf:** This is the primary Terraform configuration file that sets up the Azure provider and calls the various modules needed for creating the virtual machines.

- **variables.tf:** This file holds the variables used across the Terraform configuration. These might include Azure region, VM size, VM names, admin usernames, and passwords for the VMs.

- **outputs.tf:** This file defines the outputs of the Terraform configuration, such as the public IP addresses of the VMs.

- **.gitignore:** A file to exclude files and directories like `.terraform`, `*.tfstate`, etc., from version control.

- **README.md:** A markdown file providing a detailed overview of the repository and instructions on how to use it.

- **modules/**: A directory that contains reusable code blocks known as modules. Each component of the infrastructure has its own module, which can be developed, tested, and versioned independently.
    - **network/**: This module handles the creation of all networking-related resources like the Virtual Network, Subnet, and Network Security Group.
    - **vm/**: This module is responsible for the creation of the virtual machines. It's further split into two submodules:
        - **linux/**: This submodule contains the configuration for creating Linux VMs.
        - **windows/**: This submodule has the configuration for creating Windows VMs.

The structure above represents a well-organized Terraform project and adheres to the best practices for writing Terraform configurations. By segregating different infrastructure components into modules, the code becomes highly reusable, maintainable, and easier to manage.
