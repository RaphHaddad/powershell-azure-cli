Import-Module ./AzCli -Force

$numberOfResourceGroups = (Invoke-AzCli -Command "group list").Count
$numberOfStorageAccounts = (Invoke-AzCli -Command "storage account list").Count
Invoke-AzCli -Command "storage account list" | Measure-Object

Write-Host "Number of Resource groups '$numberOfResourceGroups'"
Write-Host "Number of Storage accounts '$numberOfStorageAccounts'"
