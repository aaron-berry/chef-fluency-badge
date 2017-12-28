#
# Cookbook:: iis
# Recipe:: Performance
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Performance Feature' do
	code 'Add-WindowsFeature -Name Web-Dyn-Compression'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Dyn-Compression).installed"
end