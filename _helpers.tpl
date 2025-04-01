{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "generic.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Define the name of objects.
*/}}
{{- define "application.fullnameOverride" -}}
{{- default .Chart.Name .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{/*
Define the name of the chart/application.
*/}}
{{- define "application.version" -}}
  {{- $version := default "" .Values.image.tag -}}
  {{- regexReplaceAll "[^a-zA-Z0-9_\\.\\-]" $version "-" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "generic.labels" -}}
helm.sh/chart: {{ include "generic.chart" . }}
{{- with include "application.version" . }}
app.kubernetes.io/version: {{ quote . }}
{{- end }}
{{- if .Values.workloadIdentity.enable }}
azure.workload.identity/use: "true"
{{- end }}
app.kubernetes.io/part-of: {{ include "application.fullnameOverride" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "generic.selectorLabels" -}}
app.kubernetes.io/name: {{ include "application.fullnameOverride" . }}
{{- end }}

{{/*
Common annotations
*/}}
{{- define "generic.annotations" -}}
reloader.stakater.com/auto: {{ .Values.secretProviderClass.reloader | quote }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "generic.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "application.fullnameOverride" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
