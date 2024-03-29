# Template to deploy a Vnet
Azure Virtual Network (VNet) is the fundamental building block for your private network in Azure. VNet enables many types of Azure resources, such as Azure Virtual Machines (VM), to securely communicate with each other, the internet, and on-premises networks.
<br/>
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdevyanshi-t%2FAzureResourceTemplate%2Fmaster%2FVirtualNetwork1%2Fvnet.json"  target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/> 
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-AAD-DomainServices%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/> 
</a>



This Azure Resource Manager (ARM ) Template creates an Azure Virtual Network with three subnets in it.

## There are three ways to deploy an ARM template in Azure:
### 1. Azure Portal- Click on the deploy button above ,you will be redirected  to Azure where you can fill in all the parameters  in ARM template to create a Virtual Network.<br/>
### 2. Azure Command Line Interface(CLI)
<a href="https://shell.azure.com" target="_blank">
<img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
</br>

``` bash
az group deployment create --resource-group Resource group name --template-file file name
```
 
Then type in all the parameter  values in the CLI .Refer to the cli.png file to see the implementation .<br/>
### 3. PowerShell
<br />
<a href="https://shell.azure.com" target="_blank">
<img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
</br>

```
New-AzResourceGroupDeployment -ResourceGroupName resource-group-name -TemplateFile path-to-template
 ```
 

Refer to the powershell.png file to see the implementation. <br/>Refer to the vnetparameter.json file to see the default values for the parameters .<br/>


