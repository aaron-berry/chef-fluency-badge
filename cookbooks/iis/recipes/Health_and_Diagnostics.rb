# Enable the Health andn Diagnostics
# Cookbook:: iis
# Recipe:: Health_and_Diagnostics
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Health_and_Diagnostics Features' do
	code 'Add-WindowsFeature -Name Web-Custom-Logging'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Custom-Logging).Installed"
end

powershell_script 'Install Health_and_Diagnostics Features' do
	code 'Add-WindowsFeature -Name Web-Log-Libraries'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Log-Libraries).Installed"
end

powershell_script 'Install Health_and_Diagnostics Features' do
	code 'Add-WindowsFeature -Name Web-ODBC-Logging'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-ODBC-Logging).Installed"
end

powershell_script 'Install Health_and_Diagnostics Features' do
	code 'Add-WindowsFeature -Name Web-Request-Monitor'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Request-Monitor).Installed"
end

powershell_script 'Install Health_and_Diagnostics Features' do
	code 'Add-WindowsFeature -Name Web-Http-Tracing'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Http-Tracing).Installed"
end

