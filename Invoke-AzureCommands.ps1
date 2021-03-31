Import-Module ./AzCli -Force

$numberOfResourceGroups = (Invoke-AzCli -Command "group list").Count
# (Invoke-AzureCli -Command "invalid-sub-command account list") # this will error.
$numberOfStorageAccounts = (Invoke-AzCli -Command "storage account list").Count
Invoke-AzCli -Command "group create --name 'new-group' --location australiaeast"

Write-Host "Number of Resource groups '$numberOfResourceGroups'"
Write-Host "Number of Storage accounts '$numberOfStorageAccounts'"
