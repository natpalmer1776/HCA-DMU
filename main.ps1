########################################
## PLACE DEVELOPER DOCUMENTATION HERE ##
## 
## Dependency []
##    Purpose: 
## 
## Function []
##    Purpose: 
##    Calls: 
## 
## Static Variable []
##    Purpose: 
## 
## PLACE DEVELOPER DOCUMENTATION HERE ##
########################################


###################################
## DECLARE GLOBAL VARIABLES HERE ##

$global:currentcomputer = $env:computername

## DECLARE GLOBAL VARIABLES HERE ##
###################################


###################################
## DECLARE SCRIPT VARIABLES HERE ##

$script:thisFilepath = ($PSScriptRoot + "\" + $MyInvocation.MyCommand.Name)
$script:PSSession = Get-PSSession

## DECLARE SCRIPT VARIABLES HERE ##
###################################


##############################
## IMPORT DEPENDENCIES HERE ##

. (Join-Path $PSScriptRoot "\Bin\WPF.ps1")
. (Join-Path $PSScriptRoot "\Bin\Log-Computer.ps1")

## IMPORT DEPENDENCIES HERE ##
##############################


####################################
## INITIALIZE USER INTERFACE HERE ##

$mainForm = New-Form -path "$PSScriptRoot\Bin\WPF\wDMU.xaml"
$loadingForm = New-Runspace -path "$PSScriptRoot\Bin\WPF\wLoader.xaml"
Sleep -Seconds 3

## INITIALIZE USER INTERFACE HERE ##
####################################


###################################
## LOG APPLICATION INSTANCE HERE ##



## LOG APPLICATION INSTANCE HERE ##
###################################

#######################################
## DEFINE APPLICATION FUNCTIONS HERE ##


function Init-Mainform {
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function Run-App{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function Run-Script {
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function End-MainForm {
    [CmdletBinding()]param()
    begin{}
    process{}
    end{$mainForm.Close()}
}


# function wDMU_AutoRegistry{}


function wDMU_AutoRun{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_AutoStorage{}


# function wDMU_AutoUsers{}


# function wDMU_AvailableIcons{}


# function wDMU_ComputerInfO{}


function wDMU_ConnectRemote{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_Custom{}


# function wDMU_CustomApp{}


function wDMU_CustomAppManager{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_CustomAppRun{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_CustomScript{}


function wDMU_CustomScriptManager{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_CustomScriptRun{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_DefaultDelete{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_DefaultDeleteAll{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_DefaultIcons{}


# function wDMU_DesktopTabs{}


function wDMU_DisconnectRemote{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_File{}


function wDMU_GenShare{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_IconsAdd{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_IconsApply{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_IconsTab{}


# function wDMU_MainTab{}


function wDMU_NewTemplate{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_NewWindow{
    [CmdletBinding()]param()
    begin{}
    process{ Start-Process Powershell.exe -ArgumentList ("-NoLogo -windowstyle hidden -NoProfile -ExecutionPolicy unrestricted  & '$script:thisFilepath'") }
    end{ End-MainForm }
}


function wDMU_OpenTemplate{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_PrintAdd{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_PrintApply{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_PrintLocalList{}


function wDMU_PrintRemove{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_PrintServer{}


function wDMU_PrintServerUpdate{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_PrintTab{}


# function wDMU_ProgressBar{}


function wDMU_PublicDelete{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_PublicDeleteAll{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_PublicIcons{}


function wDMU_RegistryApply{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_RegistryClear{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_RegistryList{}


# function wDMU_RegistryTab{}


# function wDMU_Remote{}


function wDMU_SaveTemplate{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


function wDMU_Settings{
    [CmdletBinding()]param()
    begin{}
    process{}
    end{}
}


# function wDMU_StatusText{}


# function wDMU_Templates{}


## DEFINE APPLICATION FUNCTIONS HERE ##
#######################################


######################################################
## LINK TO USER INTERFACE & SETUP INITIAL DATA HERE ##

# $wDMU_AutoRegistry{}


$wDMU_AutoRun.Add_Click({wDMU_AutoRun})


# $wDMU_AutoStorage{}


# $wDMU_AutoUsers{}


# $wDMU_AvailableIcons{}

$wDMU_CloseWindow.Add_Click({End-MainForm})


# $wDMU_ComputerInfO{}


$wDMU_ConnectRemote.Add_Click({wDMU_ConnectRemote})


# $wDMU_Custom{}


# $wDMU_CustomApp{}


$wDMU_CustomAppManager.Add_Click({wDMU_CustomAppManager})


$wDMU_CustomAppRun.Add_Click({wDMU_CustomAppRun})


# $wDMU_CustomScript{}


$wDMU_CustomScriptManager.Add_Click({wDMU_CustomScriptManager})


$wDMU_CustomScriptRun.Add_Click({wDMU_CustomScriptRun})


$wDMU_DefaultDelete.Add_Click({wDMU_DefaultDelete})


$wDMU_DefaultDeleteAll.Add_Click({wDMU_DefaultDeleteAll})


# $wDMU_DefaultIcons{}


# $wDMU_DesktopTabs{}


$wDMU_DisconnectRemote.Add_Click({wDMU_DisconnectRemote})


# $wDMU_File{}


$wDMU_GenShare.Add_Click({wDMU_GenShare})


$wDMU_IconsAdd.Add_Click({wDMU_IconsAdd})


$wDMU_IconsApply.Add_Click({wDMU_IconsApply})


# $wDMU_IconsTab{}


# $wDMU_MainTab{}


$wDMU_NewTemplate.Add_Click({wDMU_NewTemplate})


$wDMU_NewWindow.Add_Click({wDMU_NewWindow})


$wDMU_OpenTemplate.Add_Click({wDMU_OpenTemplate})


$wDMU_PrintAdd.Add_Click({wDMU_PrintAdd})


$wDMU_PrintApply.Add_Click({wDMU_PrintApply})


# $wDMU_PrintLocalList{}


$wDMU_PrintRemove.Add_Click({wDMU_PrintRemove})


# $wDMU_PrintServer{}


$wDMU_PrintServerUpdate.Add_Click({wDMU_PrintServerUpdate})


# $wDMU_PrintTab{}


# $wDMU_ProgressBar{}


$wDMU_PublicDelete.Add_Click({wDMU_PublicDelete})


$wDMU_PublicDeleteAll.Add_Click({wDMU_PublicDeleteAll})


# $wDMU_PublicIcons{}


$wDMU_RegistryApply.Add_Click({wDMU_RegistryApply})


$wDMU_RegistryClear.Add_Click({wDMU_RegistryClear})


# $wDMU_RegistryList{}


# $wDMU_RegistryTab{}


# $wDMU_Remote{}


$wDMU_SaveTemplate.Add_Click({wDMU_SaveTemplate})


$wDMU_Settings.Add_Click({wDMU_Settings})


# $wDMU_StatusText{}


# $wDMU_Templates{}


## LINK TO USER INTERFACE & SETUP INITIAL DATA HERE ##
######################################################


$loadingForm.Window.Dispatcher.Invoke({$loadingForm.Window.Close()},"Normal")
$mainForm.IsEnabled = $true
$mainForm.ShowDialog()