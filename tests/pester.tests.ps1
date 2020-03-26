Param(
    [string]$parameter1,
    [string]$parameter2
)

$rg = Get-AzResourceGroup -Name "test-rg-carth" 
Write-Host "resource group `n" (ConvertTo-Json $rg)

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$here = Join-Path $here ".."
$scriptDir = Join-Path $here "script"

Describe 'PSScriptAnalyzer analysis' {    
    $file = Join-Path $scriptDir  "playground.ps1"

    It 'File must exist' {
        $file | Should -Exist
    }

}  