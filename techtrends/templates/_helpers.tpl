{{/*
Return the name of the Helm chart.
*/}}
{{- define "techtrends.name" -}}
{{ .Chart.Name }}
{{- end -}}

{{/*
Return the full name of the resource.
*/}}
{{- define "techtrends.fullname" -}}
{{ printf "%s-%s" (include "techtrends.name" .) .Release.Name }}
{{- end -}}

{{/*
Return the name of the service account.
*/}}
{{- define "techtrends.serviceAccountName" -}}
{{- default "techtrends-serviceaccount" .Values.serviceAccount.name -}}
{{- end -}}

{{/*
Return the labels for the service account.
*/}}
{{- define "techtrends.labels" -}}
app.kubernetes.io/name: {{ include "techtrends.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
