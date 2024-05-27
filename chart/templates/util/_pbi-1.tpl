{{/*
	Get ticket 1
*/}}
{{- define "fireworks-app.get-ticket1" }}
	{{- $resource := lookup "v1" "ConfigMap" "demo-system" (printf "%s-jira-ticket1" (include "fireworks-app.chart" .)) }}
	{{- if and $resource (eq $resource.data.status "done") }}
		{{- $resource | toYaml }}
	{{- else }}
		{{- dict | toYaml }}
	{{- end }}
{{- end }}