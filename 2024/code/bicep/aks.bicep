param location string = 'eastus'
param clusterName string = 'myAKSCluster'
param nodeCount int = 3
param nodeSize string = 'Standard_DS2_v2'



resource aksCluster 'Microsoft.ContainerService/managedClusters@2021-07-01' = {
  name: clusterName
  location: location
  properties: {
    dnsPrefix: clusterName
    kubernetesVersion: '1.26.2'
    agentPoolProfiles: [
      {
        name: 'nodepool1'
        count: nodeCount
        vmSize: nodeSize
      }
    ]
    networkProfile: {
      networkPlugin: 'azure'
      loadBalancerSku: 'standard'
      networkPolicy: 'Azure'
    }
  }
  dependsOn: [
  
  ]
}
