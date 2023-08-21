$BICEP_FILE="main.json"
$location="EastUS"
$resourceGroupName = "${projectName}-rg"

# delete a resource group
az group delete --name $resourceGroupName --yes

#create resource group
az group create --name $resourceGroupName --location $location

# deploy the bicep file directly
az deployment group create --resource-group $resourceGroupName --template-file $BICEP_FILE  --parameters parameters.json -o json
