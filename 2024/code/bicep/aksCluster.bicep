param location string
param clusterName string
param nodeCount int
param nodeVMSize string
param dnsPrefix string
param nodeResourceGroupName string

resource aksCluster 'Microsoft.ContainerService/managedClusters@2021-08-01' = {
  name: clusterName
  location: location
  properties: {
    kubernetesVersion: '1.26.1'
    nodeResourceGroup: nodeResourceGroupName
    enableRBAC: true
    agentPoolProfiles: [
      {
        name: 'nodepool1'
        count: nodeCount
        vmSize: nodeVMSize
        osType: 'Linux'
      }
    ]
    dnsPrefix: dnsPrefix
  }
}

output kubeconfig string = aksCluster.properties.kubeConfig
