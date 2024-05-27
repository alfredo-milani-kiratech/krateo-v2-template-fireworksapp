{{/*
	Get ticket 2
*/}}
{{- define "fireworks-app.get-ticket2" }}
	{{- $resource := lookup "v1" "ConfigMap" "demo-system" (printf "%s-jira-ticket2" (include "fireworks-app.chart" .)) }}
	{{- if and $resource (eq $resource.data.status "done") }}
		{{- $resource | toYaml }}
	{{- else }}
		{{- dict | toYaml }}
	{{- end }}
{{- end }}