$ScriptPath = split-path -parent $MyInvocation.MyCommand.Definition

if (!Test-Path "$Env:tmp\psexec.exe")
{
	Invoke-WebRequest -Uri "http://live.sysinternals.com/psexec.exe" -OutFile "$Env:tmp\psexec.exe"
}

function Remote-Command {
    param (
        [String]$ComputerName,
        [String]$CommandString
    )
    if(Verify-FileAccess($ComputerName)){
		
		. "$ENV:TMP\psexec.exe" \\$ComputerName /accepteula powershell -noninteractive -command "powershell -noninteractive -Command $CommandString"
    }
}

function Remote-Script {
    param (
        [String]$ComputerName,
        [String]$Path
    )
    if(Verify-FileAccess($ComputerName)){
        
        Copy-Item -Path $Path -Destination "\\$ComputerName\C$\remote-script.ps1" -Force
		. "$ENV:TMP\psexec.exe" \\$ComputerName /accepteula "powershell -windowstyle hidden -noninteractive -executionpolicy unrestricted -file C:\remote-script.ps1"
    }

}

function Verify-FileAccess {
    param([String]$ComputerName)
    $result = Test-Path -Path "\\$ComputerName\C$"
    return $result
}