#
# Cookbook:: iis
# Recipe:: Security
#
# Copyright:: 2017, The Authors, All Rights Reserved.
powershell_script 'Install Security Features' do 
	code 'Add-WindowsFeature -Name Web-Basic-Auth'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Basic-Auth).Installed'
end

powershell_script 'Install Security Features' do 
	code 'Add-WindowsFeature -Name Web-CertProvider'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-CertProvider).Installed'
end

powershell_script 'Install Security Features' do
	code 'Add-WindowsFeature -Name Web-Client-Auth'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Client-Auth).Installed'
end

powershell_script 'Install Security Features' do
	code 'Add-WindowsFeature -Name Web-Digest-Auth'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Digest-Auth).Installed'
end

powershell_script 'Install Security Features' do 
	code 'Add-WindowsFeature -Name Web-IP-Security'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-IP-Security).Installed'
end

powershell_script 'Install Security Features' do 
	code 'Add-WindowsFeature -Name Web-Url-Auth'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Url-Auth).Installed'
end

powershell_script 'Install Security Features' do 
	code 'Add-WindowsFeature -Name Web-Windows-Auth'
	guard_interpreter :powershell_script
	not_if '(Get-WindowsFeature -Name Web-Windows-Auth).Installed'
end

