Param(
    [string]$parameter1,
    [string]$parameter2
)

Write-Host "parameter 1 : " $parameter1
Write-Host "parameter 2 : " $parameter2

Write-Host "Get-InstalledModule"
Get-InstalledModule

Write-Host "Install-Module Az"
Install-Module -Name Az -Force -ErrorAction Stop

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$here = Join-Path $here ".."
$scriptDir = Join-Path $here "script"

Describe 'PSScriptAnalyzer analysis' {    
    $file = Join-Path $scriptDir  "playground.ps1"

    It 'File must exist' {
        $file | Should -Exist
    }

}  