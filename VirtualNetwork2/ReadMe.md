# Template to deploy a Vnet
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdevyanshi-t%2FAzureResourceTemplate%2Fmaster%2FVirtualNetwork2%2Fvnet2.json"  target="_blank">
<img src="http://azuredeploy.net/deploybutton.png"/> 
</a>

<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-AAD-DomainServices%2Fazuredeploy.json" target="_blank">
<img src="http://armviz.io/visualizebutton.png"/> 
</a>



This Azure Resource Manager (ARM ) Template creates an Azure Virtual Network with a default subnet name subnet1 in it.

## There are three ways to deploy an ARM template in Azure:
1. Azure Portal- Click on the deploy button above ,you will be redirected  to Azure where you can fill in all the parameters  in ARM template to create a Virtual Network.<br/>
2. Azure Command Line Interface(CLI)- On the Azure CLI type the command “az group deployment create --resource-group<Resource group name> --template-file<file name>” <br/>Then type in all the parameter  values in the CLI .Refer to the cli2.png file to see the implementation .<br/>
3. PowerShell-Type the commands:<br/> 
a) cd <br/>
b) New-AzResourceGroupDeployment -ResourceGroupName <resource-group-name> -TemplateFile <path-to-template> <br/>
c) Then enter the values for the parameters in the templates.<br/>
Refer to the powershell2.png file to see the implementation. <br/>Refer to the vnet2parameter.json file to see the default values for the parameters .

