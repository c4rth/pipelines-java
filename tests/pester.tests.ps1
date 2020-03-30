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

Describe 'MyTests' {    
    #$file = Join-Path $scriptDir  "playground.ps1"

    $global:content = $null


    Context("Part2") {
        It 'File must exist' {
            $global:content = "Hello world"
            # $file | Should -Exist
            $global:content | Should Not BeNullOrEmpty
        }

        It 'Content' {
            $global:content | Should Not BeNullOrEmpty
        }
    }

    for ($i = 0; $i -lt 10; $i++) {
        $global:content += "$i "       
    }

    Context("Part1") {
    
        for ($i = 0; $i -lt 10; $i++) {
            $global:content += "$i "       
        }
    
        It 'Test3' {
            $global:content = "Hello world"
            # $file | Should -Exist
        }

        It 'Test1' {
            $global:content = "Hello world"
            # $file | Should -Exist
        }

        It 'Test4' {
            $global:content = "Hello world"
            # $file | Should -Exist
        }
    }
}