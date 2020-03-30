$PesterSettings = @{
  Script = @{
    Path = "./tests/pester.tests.ps1"
    Parameters = @{
      parameter1 = 'value of parameter1'
      parameter2 = 'value of parameter2'
    }
  }
  OutputFile = "tests-result.xml"
  OutputFormat = "NUnitXml"
  EnableExit = $true
  Verbose = $true
}

Invoke-Pester @PesterSettings