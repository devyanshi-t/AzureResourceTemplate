# Template to deploy  Vnet Peering

Virtual network peering enables you to seamlessly connect Azure virtual networks. Once peered, the virtual networks appear as one, for connectivity purposes. The traffic between virtual machines in the peered virtual networks is routed through the Microsoft backbone infrastructure.<br/>

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdevyanshi-t%2FAzureResourceTemplate%2Fmaster%2FPeering%2Fpeer.json"  target="_blank">
<img src="http://azuredeploy.net/deploybutton.png"/> 
</a>

<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-AAD-DomainServices%2Fazuredeploy.json" target="_blank">
<img src="http://armviz.io/visualizebutton.png"/> 
</a>



This Azure Resource Manager (ARM ) Template creates an Azure Virtual  Network  Peering  between two virtual network .

## There are three ways to deploy an ARM template in Azure:
### 1. Azure Portal- Click on the deploy button above ,you will be redirected  to Azure where you can fill in all the parameters  in ARM template to create a Virtual Network Peering.<br/>
### 2. Azure Command Line Interface(CLI)
<br />
<a href="https://shell.azure.com" target="_blank">
<img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
</br>

```bash 
cd 
New-AzResourceGroupDeployment -ResourceGroupName resource-group-name -TemplateFile path-to-template 
```

###  3. PowerShell
<br />
<a href="https://shell.azure.com" target="_blank">
<img name="launch-cloud-shell" src="https://docs.microsoft.com/azure/includes/media/cloud-shell-try-it/launchcloudshell.png" data-linktype="external">
</a>
</br>

Type the commands:
```bash 
cd 
 New-AzResourceGroupDeployment -ResourceGroupName resource-group-name -TemplateFile path-to-template 
 ```
 Then enter the values for the parameters in the templates.<br/>
 Refer to the parameter.json file to see the default values for the parameters .<br/>
 Note: In the peer. json file add your own subscrption id appropriately.<br/>
 Also note ,change the resource group  appropriately twice in the peer.json file while deploying the template.

## Author
[`Devyanshi Tiwari`](https://github.com/devyanshi-t)<br />
