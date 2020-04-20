$action = "action2"

switch ($action) {
  { $_ -in @("action1", "action2") } { 
    Write-Host "switch action1 or action2"
   }
  Default {
    throw 'Unknow action'
  }
}

$contents = 'Content1 Content2 '' Content3'.Trim()

Write-Host $contents

Write-Error "$contents" 
Write-Warning "$contents" 


$xxx = @()
$xxx += "Hello"
$xxx += " World"

Write-Host $xxx

$test = $true
if ($test) {
  Write-Host "test true"
}

$test2 = $false
if ($test2) {
  Write-Host "test2 true"
}