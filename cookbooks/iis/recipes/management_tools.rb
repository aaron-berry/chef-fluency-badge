#
# Cookbook:: iis
# Recipe:: management_tools
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Management Tools'  do
	code 'Add-WindowsFeature -Name  Web-Mgmt-Tools'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Mgmt-Tools).Installed'
end

powershell_script 'Install Management Tools' do
	code 'Add-WindowsFeature -Name Web-Mgmt-Console'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Mgmt-Console).Installed'
end

powershell_script 'Install Management Tools' do 
	code 'Add-WindowsFeature -Name Web-Mgmt-Compat'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Mgmt-Compat).Installed'
end

powershell_script 'Install Management Tools' do
	code 'Add-WindowsFeature -Name Web-Metabase'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Metabase).Installed'
end

powershell_script 'Install Management Tools' do 
	code 'Add-WindowsFeature -Name Web-Lgcy-Mgmt-Console'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Lgcy-Mgmt-Console).Installed'
end

powershell_script 'Install Management Tools' do
	code 'Add-WindowsFeature -Name Web-Lgcy-Scripting'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Lgcy-Scripting).Installed'
end

powershell_script 'Install Management Tools' do
	code 'Add-WindowsFeature -Name Web-WMI'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-WMI).Installed'
end

 powershell_script 'Install Management Tools' do
 	code 'Add-WindowsFeature -Name Web-Scripting-Tools'
 	guard_interpreter :powershell_script
 	not_if '(Get-WindowsFeature -Name Web-Scripting-Tools).Installed'
 end 

 powershell_script 'Install Management Tools' do
 	code 'Add-WindowsFeature -Name Web-Mgmt-Service'
 	guard_interpreter :powershell_script
 	not_if '(Get-WindowsFeature -Name Web-Mgmt-Service).Installed'
 end