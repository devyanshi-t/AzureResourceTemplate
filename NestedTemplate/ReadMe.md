# Template to deploy a Vnet
<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fdevyanshi-t%2FAzureResourceTemplate%2Fmaster%2FNestedTemplate%2Fmaster.json"  target="_blank">
<img src="http://azuredeploy.net/deploybutton.png"/> 
</a>

<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-AAD-DomainServices%2Fazuredeploy.json" target="_blank">
<img src="http://armviz.io/visualizebutton.png"/> 
</a>


The three   architecture  is a basic model for developing a web database application and communication is done using this 3-level application logic.
The  database tier is  where data gets stored in a database server and is known as fully secure . Various CRUD operations are being performed here. Next is the Api layer inside the Api subnet which provides a communication between the web server and the data base server. Finally there is a web server which aacepts all the internet requests and send requests to the api server.

Note: 
<img src=

## There are three ways to deploy an ARM template in Azure:
1. Azure Portal- Click on the deploy button above ,you will be redirected  to Azure where you can fill in all the parameters  in ARM template to create a Virtual Network.<br/>
2. Azure Command Line Interface(CLI)- On the Azure CLI type the command “az group deployment create --resource-group Resource group name --template-file file name” <br/>Then type in all the parameter  values in the CLI .Refer to the cli.png file to see the implementation .<br/>
3. PowerShell-Type the commands:<br/> 
a) cd <br/>
b) New-AzResourceGroupDeployment -ResourceGroupName resource-group-name -TemplateFile path-to-template <br/>
c) Then enter the values for the parameters in the templates.<br/>
Refer to the powershell.png file to see the implementation. <br/>Refer to the vnetparameter.json file to see the default values for the parameters .

