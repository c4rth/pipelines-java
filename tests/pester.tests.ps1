$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$here = Join-Path $here ".."
$scriptDir = Join-Path $here "script"

Describe 'PSScriptAnalyzer analysis' {    
    $file = Join-Path $scriptDir  "playground.ps1"

    It 'File must exist' {
        $file | Should -Exist
    }

}  