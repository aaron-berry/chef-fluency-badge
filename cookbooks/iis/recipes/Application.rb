#
# Cookbook:: iis
# Recipe:: Application
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Application Features' do
	code 'Add-WindowsFeature -Name Web-Net-Ext'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Net-Ext).Installed'
end

powershell_script 'Install Application Features' do 
	code 'Add-WindowsFeature -Name Web-Net-Ext45'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Net-Ext45).Installed'
end

powershell_script 'Install Application Features' do 
	code 'Add-WindowsFeature -Name Web-ASP'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-ASP).Installed'
end

powershell_script 'Install Application Features' do
	code 'Add-WindowsFeature -Name Web-ASP-Net'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-ASP-Net).Installed'
end

powershell_script 'Install Application Features' do
	code 'Add-WindowsFeature -Name Web-ASP-Net45'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-ASP-Net45).Installed'
end

powershell_script 'Install Application Features' do 
	code 'Add-WindowsFeature -Name Web-CGI'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-CGI).Installed'
end

powershell_script 'Install Application Features' do
	code 'Add-WindowsFeature -Name Web-ISAPI-Ext'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-ISAPI-Ext).Installed'
end

powershell_script 'Install Application Features' do 
	code 'Add-WindowsFeature -Name Web-ISAPI-Filter'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-ISAPI-Filter).Installed'
end

powershell_script 'Install Application Features' do
	code 'Add-WindowsFeature -Name Web-Includes'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Includes).Installed'
end

powershell_script 'Install Application Features' do 
	code 'Add-WindowsFeature -Name Web-WebSockets'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-WebSockets).Installed'
end