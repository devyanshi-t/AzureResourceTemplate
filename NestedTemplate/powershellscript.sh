Connect-AzAccount

$ResourceGroupName="DevyanshiFirstApp"
$customport=3307

$rule1="DisasterRecoveryRule1"
$rule2="DisasterRecoveryRule2"

$nsgname="Db_NSG" #Change the Name according to need

$resource = Get-AzResource | Where {$_.ResourceGroupName –eq $ResourceGroupName -and $_.ResourceType -eq "Microsoft.Network/networkSecurityGroups"}
$nsg = Get-AzNetworkSecurityGroup -Name $nsgname -ResourceGroupName $ResourceGroupName

# Add the inbound security rule.
$nsg | Add-AzNetworkSecurityRuleConfig -Name $rule1 -Description "Allow Inbound Coomunication from databse2 to to database1" -Access Allow `
-Protocol * -Direction Inbound -Priority 3891 -SourceAddressPrefix "20.0.4.0/24" -SourcePortRange $port1 `
-DestinationAddressPrefix "10.0.4.0/24" -DestinationPortRange $customportport


# Add the outbound security rule.
$nsg | Add-AzNetworkSecurityRuleConfig -Name $rule2 -Description "Allow otbound Communication from databse2 to to database1" -Access Allow `
-Protocol * -Direction Outbound -Priority 3891 -SourceAddressPrefix "10.0.4.0/24" -SourcePortRange $port1 `
-DestinationAddressPrefix "20.0.4.0/24" -DestinationPortRange $customport

# Update the NSG.
$nsg | Set-AzNetworkSecurityGroup
