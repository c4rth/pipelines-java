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

Describe 'PSScriptAnalyzer analysis rules' {    
    $file = Join-Path $scriptDir  "playground.ps1"
    $ScriptAnalyzerRules = Get-ScriptAnalyzerRule -Name "PSAvoid*"

    Foreach ( $Rule in $ScriptAnalyzerRules ) {
        It "Should not return any violation for the rule : $($Rule.RuleName)" {
            Invoke-ScriptAnalyzer -Path $file -IncludeRule $Rule.RuleName | Should BeNullOrEmpty
        }
    }
}