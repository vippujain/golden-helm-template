# golden-helm-template

![Version: 2.22.0](https://img.shields.io/badge/Version-2.22.0-informational?style=flat-square) ![AppVersion: 1.0](https://img.shields.io/badge/AppVersion-1.0-informational?style=flat-square)

A gold chart templateA golden helm chart template

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| additionalAnnotations | object | `{}` | Global annotations |
| additionalLabels | object | `{}` | Global labels |
| additionalVolumeMounts | list | `[]` |  |
| additionalVolumes | list | `[]` |  |
| args | string | `nil` |  |
| autoscaling.behavior | object | `{}` |  |
| autoscaling.enabled | bool | `false` |  |
| autoscaling.maxReplicas | string | `nil` |  |
| autoscaling.minReplicas | string | `nil` |  |
| autoscaling.targetCPUUtilizationPercentage | string | `nil` |  |
| autoscaling.targetMemoryUtilizationPercentage | string | `nil` |  |
| command | string | `nil` |  |
| configMap.data | object | `{}` | The data for the ConfigMap. Both keys and values need to be strings. |
| configMap.enabled | bool | `false` | If a ConfigMap with configurable values should be created |
| configMap.mountFiles | list | `[]` | Mounting of individual keys in the ConfigMap as files |
| configMap.mountPath | string | `""` | If specified, the ConfigMap is mounted as a directory at this path |
| deployment.additionalPreferredPodAntiAffinity | object | `{}` | Additional preferredDuringSchedulingIgnoredDuringExecution podAntiAffinity terms |
| deployment.affinity | object | `{}` | Additional affinity terms. **Do not** specify PodAntiAffinities with preferredDuringSchedulingIgnoredDuringExecution here, these go to `additionalPreferredPodAntiAffinity`. All `requiredDuringScheduling` affinities need to be defined here. |
| deployment.annotations | object | `{}` | annotations to set for the Deployment |
| deployment.containerSecurityContext | object | `{}` |  |
| deployment.enableNodeSpreadPodAntiAffinity | bool | `true` | Enable an AntiAffinity between pods, spreading them across nodes if possible with a priority of 100. |
| deployment.enableSpotAffinity | bool | `false` | Enable Spot Node Pool affinity. In case you have Spot Node Pools deployed on your cluster, you might want to enable this in case you desire to restrict where you want your pods to be scheduled. |
| deployment.enableSpotTolerations | bool | `false` | Enable Spot Node Pool tolerations. In case you have Spot Node Pools deployed on your cluster, you must enable this in case you want your pods to be scheduled to those nodes. |
| deployment.enableZoneSpreadPodAntiAffinity | bool | `false` | Enable an AntiAffinity between pods, spreading them across zones if possible with a priority of 50. |
| deployment.enabled | bool | `true` |  |
| deployment.podAnnotations | object | `{}` | annotations to set for the Pods |
| deployment.podLabels | object | `{}` | labels to add to the Pods |
| deployment.podSecurityContext | object | `{}` |  |
| deployment.tolerations | list | `[]` | Tolerations to apply to deployments |
| deploymentStrategy | object | `{}` |  |
| env | object | `{"metadata":[],"variables":[]}` | To expose pod information in deployment ( reference - https://kubernetes.io/docs/tasks/inject-data-application/environment-variable-expose-pod-information/ ). |
| fullnameOverride | string | `"application"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"mcr.microsoft.com/azuredocs/aks-helloworld"` |  |
| image.tag | string | `"v1"` |  |
| imagePullSecrets | list | `[]` |  |
| ingress.additionalLabels | object | `{}` | Additional labels for the ingress resource |
| ingress.annotations | object | `{}` | Additional annotations for the ingress resource |
| ingress.className | string | `nil` | The ingressClassName for this Ingress resource |
| ingress.enabled | bool | `false` |  |
| ingress.hosts[0] | object | `{"host":"chart-example.local","paths":[{"path":"/","pathType":"Prefix","servicePortNumber":80}]}` | host name to listen to |
| ingress.hosts[0].paths[0] | object | `{"path":"/","pathType":"Prefix","servicePortNumber":80}` | URL path |
| ingress.hosts[0].paths[0].pathType | string | `"Prefix"` | Type of path for the ingress |
| ingress.hosts[0].paths[0].servicePortNumber | int | `80` | Name of the target port on the service |
| ingress.tls | list | `[]` |  |
| initContainers | list | `[]` | Pass in containers to run ahead of any new pod starting up |
| initJob | object | `{"enabled":false,"env":{"metadata":[],"variables":[]},"image":{"pullPolicy":"IfNotPresent","repository":"busybox","tag":"stable"},"podAnnotations":{},"resources":{}}` | Job (one-off container) to run ahead of helm install / upgrade |
| keda.cooldownPeriod | int | `300` |  |
| keda.enabled | bool | `false` |  |
| keda.initialCooldownPeriod | int | `0` |  |
| keda.maxReplicaCount | int | `1` |  |
| keda.minReplicaCount | int | `0` |  |
| keda.pollingInterval | int | `30` |  |
| keda.triggerAuthentication.name | string | `"azure-storage-auth"` |  |
| keda.triggerAuthentication.parameters[0].secretTargetRef[0].key | string | `"connection-string"` |  |
| keda.triggerAuthentication.parameters[0].secretTargetRef[0].name | string | `"azure-storage-secret"` |  |
| keda.triggerAuthentication.parameters[0].secretTargetRef[0].parameter | string | `"connection"` |  |
| keda.triggers[0].authenticationRef.name | string | `"azure-storage-auth"` |  |
| keda.triggers[0].metadata.activationBlobCount | string | `"1"` |  |
| keda.triggers[0].metadata.blobContainerName | string | `"yourcontainername"` |  |
| keda.triggers[0].metadata.blobCount | string | `"5"` |  |
| keda.triggers[0].type | string | `"azure-blob"` |  |
| livenessProbe | object | `{}` | Configure a liveness probe for the pod |
| networkpolicy.egress | object | `{}` |  |
| networkpolicy.enabled | bool | `false` |  |
| networkpolicy.ingress | object | `{}` |  |
| networkpolicy.policyTypes[0] | string | `"Ingress"` |  |
| networkpolicy.policyTypes[1] | string | `"Egress"` |  |
| nodeSelector | object | `{}` |  |
| persistence.enabled | bool | `false` |  |
| persistence.volumes[0].accessModes | string | `"ReadWriteMany"` | Access Mode for the PVC which must match the PV |
| persistence.volumes[0].annotations | object | `{}` | Annotations to add to the PersistentVolumeClaim |
| persistence.volumes[0].mountPath | string | `"/data"` | Where the persistent volume is mounted. |
| persistence.volumes[0].name | string | `"test-pvc"` |  |
| persistence.volumes[0].storage | string | `"42Gi"` | Storage capacity, needs to match the PV capacity. |
| persistence.volumes[0].storageClassName | string | `"azureblob-fuse-standard"` | Set a storageClassName, needs to match the PV storageClassName. |
| persistence.volumes[0].subPaths | object | `{}` | Specify if mounting specific paths from volume, takes precedence over mountPath if non-empty |
| persistence.volumes[0].volumeMode | string | `"Filesystem"` | Set the volume mode, needs to match the PV volumeMode. |
| persistence.volumes[0].volumeName | string | `"test-pv"` | Point to the backing Persistent Volume |
| podDisruptionBudget.enabled | bool | `false` | Deploy a PodDisruptionBudget |
| podDisruptionBudget.maxUnavailable | string | `"75%"` | How many pods can be unvailable, maximum |
| podDisruptionBudget.minAvailable | string | `"25%"` | How many pods need to be available, minimum |
| ports[0].containerPort | int | `80` |  |
| ports[0].name | string | `"http"` |  |
| ports[0].protocol | string | `"TCP"` |  |
| readinessProbe | object | `{}` | Configure a readiness probe for the pod |
| replicaCount | int | `1` | number of replicas |
| resources | object | `{}` |  |
| restartPolicy | string | `"Always"` |  |
| revisionHistoryLimit | int | `10` | The number of old ReplicaSets to retain |
| secret.data | object | `{}` | The data for the ConfigMap. Both keys and values need to be strings. |
| secret.enabled | bool | `false` | If a Secret with configurable values should be created |
| secretProviderClass.clientID | string | `""` | Client ID of project user managed identity |
| secretProviderClass.enabled | bool | `false` |  |
| secretProviderClass.provider | string | `"azure"` |  |
| secretProviderClass.reloader | bool | `false` | If secrets should be reloaded on change |
| secretProviderClass.secrets | object | `{}` | The data for the SecretProviderClass. Both keys and values need to be strings. |
| secretProviderClass.tenant_id | string | `""` | Azure tenant id |
| secretProviderClass.tls.name | string | `nil` |  |
| secretProviderClass.tls.version | string | `nil` |  |
| secretProviderClass.vaultAddress | string | `""` | vaultAddress: <keyvault_name> |
| service.annotations | object | `{}` |  |
| service.enabled | bool | `true` |  |
| service.ip | string | `nil` |  |
| service.loadBalancerIP | string | `nil` |  |
| service.ports | list | `[{"name":"http","port":80,"protocol":"TCP","targetPort":"http"}]` | List of ports. If you override it, you will have to explicitly add the default again. |
| service.ports[0] | object | `{"name":"http","port":80,"protocol":"TCP","targetPort":"http"}` | Target port on the pod. |
| service.ports[0].name | string | `"http"` | Name of the port on the service. |
| service.ports[0].port | int | `80` | Port to use on the service. |
| service.ports[0].protocol | string | `"TCP"` | Protocol to use for the target port. |
| service.type | string | `"ClusterIP"` |  |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| startupProbe | object | `{}` | Configure a startup probe for the pod |
| workloadIdentity.enable | bool | `false` |  |
| workloadIdentity.serviceAccountName | string | `""` |  |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)
