# Define variables
$resourceGroupName = "RESOURCEGROUP"
$workspaceName = "WORKSPACE"
$newArchivePeriod = 60

# Get the workspace
$workspace = Get-AzOperationalInsightsWorkspace -ResourceGroupName $resourceGroupName -Name $workspaceName

# Get all tables in the Log Analytics workspace
$tables = Get-AzOperationalInsightsTable -ResourceGroupName $resourceGroupName -WorkspaceName $workspaceName

# Iterate through each table and update the archive period
foreach ($table in $tables) {
    $currentArchivePeriod = $table.ArchiveInDays
    Write-Host "Updating archive period for table '$($table.Name)' from $currentArchivePeriod to $newArchivePeriod days"
    
    # Update the archive period
    Update-AzOperationalInsightsTable -ResourceGroupName $resourceGroupName `
                                      -WorkspaceName $workspaceName `
                                      -TableName $table.Name `
                                      -TotalRetentionInDays $newArchivePeriod
}

Write-Host "Archive period update completed for all tables."