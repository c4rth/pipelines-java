$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$here = Join-Path $here ".."
$scriptDir = Join-Path $here "script"

Describe 'PSScriptAnalyzer analysis' {    
    $file = Join-Path $scriptDir  "playground.ps1"

    Invoke-ScriptAnalyzer -Path $file -Severity Warning
    # $ScriptAnalyzerResults = Invoke-ScriptAnalyzer -Path $file -Severity Warning
    # It 'Should not return any violation' {
    #     $ScriptAnalyzerResults | Should BeNullOrEmpty
    # }
}  