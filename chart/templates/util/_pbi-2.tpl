{{/*
	Get ticket 2
*/}}
{{- define "fireworks-app.get-ticket2" }}
	{{- $ticket := lookup "v1" "ConfigMap" "demo-system" (printf "%s-jira-ticket2" (include "fireworks-app.chart" .)) }}
	{{- $isTicketSolved := and $ticket (eq $ticket.data.status "done") }}
	{{- if $isTicketSolved }}
		{{- $ticket | toYaml }}
	{{- else }}
		{{- dict | toYaml }}
	{{- end }}
{{- end }}