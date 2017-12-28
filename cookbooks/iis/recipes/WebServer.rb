#
# Cookbook:: iis
# Recipe:: WebServer
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Web-Server' do 
	code 'Add-WindowsFeature -Name Web-Server'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Server).Installed"
end