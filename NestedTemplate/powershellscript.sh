Connect-AzAccount

$ResourceGroup="DevyanshiFirstApp"
$customport=56233
$rule1="DisasterRecoveryRule1"
$rule2="DisasterRecoveryRule2"

$nsgname="Db_NSG" #enter your database nsg name here

$resource = Get-AzResource | Where {$_.ResourceGroupName –eq $ResourceGroup -and $_.ResourceType -eq "Microsoft.Network/networkSecurityGroups"}
$nsg = Get-AzNetworkSecurityGroup -Name $nsgname -ResourceGroupName $ResourceGroup

# Add the inbound security rule.
$nsg | Add-AzNetworkSecurityRuleConfig -Name $rule1 -Description "AllowInboundconnectiontofirstdatabasesubnet" -Access Allow `
-Protocol * -Direction Inbound -Priority 3891 -SourceAddressPrefix "20.0.3.0/24" -SourcePortRange $customport`
-DestinationAddressPrefix "10.0.3.0/24" -DestinationPortRange $customport


# Add the outbound security rule.
$nsg | Add-AzNetworkSecurityRuleConfig -Name $rulename2 -Description "Allowoutboundconnectionfromfirstdatabasesubnet" -Access Allow `
-Protocol * -Direction Outbound -Priority 3891 -SourceAddressPrefix "10.0.3.0/24" -SourcePortRange $customport `
-DestinationAddressPrefix "20.0.3.0/24" -DestinationPortRange $customport

# Update the NSG.
$nsg | Set-AzNetworkSecurityGroup
