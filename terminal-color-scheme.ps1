param
(
	[Parameter(Mandatory=$true)]
	[string]
	$colorScheme,
		
	[Parameter(Mandatory=$true)]
	[string]
	$settings
)

$settingsJson = Get-Content "$settings" -raw | ConvertFrom-Json
$settingsJson.profiles.defaults.colorScheme="$colorScheme"
$settingsJson | ConvertTo-Json -depth 32 | Set-Content "$settings"