#
## Cookbook:: iis
## Recipe:: Common_Http_Features
##
## Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Common_Http_Features' do
	code 'Add-WindowsFeature -Name Web-Http-Redirect'
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Http-Redirect).Installed"
end
