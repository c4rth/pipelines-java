$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$here = Join-Path $here ".."
$scriptDir = Join-Path $here "script"

# Import-Module ".\Export-NUnitXml.psm1" -Force

Describe 'PSScriptAnalyzer analysis' {    
    $file = Join-Path $scriptDir  "playground.ps1"

    $ScriptAnalyzerResult = Invoke-ScriptAnalyzer -Path $file -Severity Warning # -ExcludeRule PSAvoidUsingWriteHost
    If ( $ScriptAnalyzerResult ) {  
        $ScriptAnalyzerResultString = $ScriptAnalyzerResult | Out-String
        Write-Warning $ScriptAnalyzerResultString
    }
    # Export-NUnitXml -ScriptAnalyzerResult $ScriptAnalyzerResult -Path '.\ScriptAnalyzerResult.xml'

}  