# Param(
#     [string]$parameter1,
#     [string]$parameter2
# )

# $rg = Get-AzResourceGroup -Name "test-rg-carth" 
# Write-Host "resource group `n" (ConvertTo-Json $rg)

# $here = Split-Path -Parent $MyInvocation.MyCommand.Path
# $here = Join-Path $here ".."
# $scriptDir = Join-Path $here "script"

function Get-String {
    return "XYZ"
}

Describe 'PSScriptAnalyzer analysis' {    
    #$file = Join-Path $scriptDir  "playground.ps1"

    $global:content = $null

    Context("Part1") {
        It 'File must exist' {
            Write-Host "test1" $global:content
            $global:content = "Hello world"
            # $file | Should -Exist
            Write-Host "test1" $global:content
        }

        It 'Content' {
            Write-Host "test2" (Get-String)
            Write-Host "test2" $global:content 
            $global:content | Should Not BeNullOrEmpty
        }
    }

    Write-Host "Do something..." $global:content
    for ($i = 0; $i -lt 10; $i++) {
        $global:content += "$i "       
    }
    Write-Host "Done..." $global:content

    Context("Part2") {

    
        Write-Host "Do something"
        for ($i = 0; $i -lt 10; $i++) {
            $global:content += "$i "       
        }
    
        It 'Test3' {
            Write-Host "test3" $global:content
            $global:content = "Hello world"
            # $file | Should -Exist
            Write-Host "test3" $global:content
        }
    }
}