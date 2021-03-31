# README

This blog demonstrates how to use the [Azure
CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) within a
PowerShell script.

## Usage

### Authenticate into an Azure Context

```cmd
az login
az account set -s guid-of-subscription
```

### Import the Module into a Script

```PowerShell
Import-Module ./AzCli -Force
```

### Run Azure CLI Commands

```PowerShell
Import-Module ./AzCli -Force
Invoke-AzCli -Command "group list"
```
