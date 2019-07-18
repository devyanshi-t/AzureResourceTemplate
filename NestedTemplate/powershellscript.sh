
# this is a code which creates a new security rule in case of disaster to recover the content of the database subnet.
$ResourceGroupName="DevyanshiFirstApp" # Add your own resource group accordingly
$customport=3308 # add your own custom port

$rule1="DisasterRecoveryRule1"
$rule2="DisasterRecoveryRule2"
$rule3="DisasterRecoveryRule3"
$rule4="DisasterRecoveryRule4"

$nsgname1="Db_NSG1" #Change the Name according to need
$nsgname2="Db_NSG2"

$resource = Get-AzResource | Where {$_.ResourceGroupName –eq $ResourceGroupName -and $_.ResourceType -eq "Microsoft.Network/networkSecurityGroups"}
$nsg1 = Get-AzNetworkSecurityGroup -Name $nsgname1 -ResourceGroupName $ResourceGroupName
$nsg2 = Get-AzNetworkSecurityGroup -Name $nsgname2 -ResourceGroupName $ResourceGroupName

# Add the inbound security rule.
$nsg2 | Add-AzNetworkSecurityRuleConfig -Name $rule1 -Description "Allow Coomunication from databse subnet 1 to to database subnet 2" -Access Allow `
-Protocol * -Direction Inbound -Priority 3000 -SourceAddressPrefix "20.0.4.0/24" -SourcePortRange $customport `
-DestinationAddressPrefix "10.0.4.0/24" -DestinationPortRange $customport


# Add the outbound security rule.
$nsg1 | Add-AzNetworkSecurityRuleConfig -Name $rule2 -Description "Allow  Communication from databse subnet1 to to database subnet 2" -Access Allow `
-Protocol * -Direction Outbound -Priority 3000 -SourceAddressPrefix "10.0.4.0/24" -SourcePortRange $customport `
-DestinationAddressPrefix "20.0.4.0/24" -DestinationPortRange $customport


# Add the inbound security rule.
$nsg1 | Add-AzNetworkSecurityRuleConfig -Name $rule3 -Description "Allow  Communication from databse subnet2  to to database subnet 1" -Access Allow `
-Protocol * -Direction Inbound -Priority 3000 -SourceAddressPrefix "20.0.4.0/24" -SourcePortRange $customport `
-DestinationAddressPrefix "10.0.4.0/24" -DestinationPortRange $customport

$nsg2 | Add-AzNetworkSecurityRuleConfig -Name $rule4 -Description "Allow Coomunication from databse subnet 2 to to database subnet 1" -Access Allow `
-Protocol * -Direction Outbound -Priority 3000 -SourceAddressPrefix "20.0.4.0/24" -SourcePortRange $customport `
-DestinationAddressPrefix "10.0.4.0/24" -DestinationPortRange $customport




# Update the NSG.
$nsg1 | Set-AzNetworkSecurityGroup
$nsg2 | Set-AzNetworkSecurityGroup















