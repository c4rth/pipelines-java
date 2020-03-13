Install-Module -Name PSScriptAnalyzer -Force -ErrorAction Stop
Import-Module './tests/Export-NUnitXml.psm1' -Force

$scriptDir = Join-Path "." "script"
$file = Join-Path $scriptDir  "playground.ps1"
$ScriptAnalyzerResult = Invoke-ScriptAnalyzer -Path $file -Severity Warning # -ExcludeRule PSAvoidUsingWriteHost
If ( $ScriptAnalyzerResult ) {  
    $ScriptAnalyzerResultString = $ScriptAnalyzerResult | Out-String
    Write-Warning $ScriptAnalyzerResultString
}
Export-NUnitXml -ScriptAnalyzerResult $ScriptAnalyzerResult -Path ./ScriptAnalyzerResult.xml