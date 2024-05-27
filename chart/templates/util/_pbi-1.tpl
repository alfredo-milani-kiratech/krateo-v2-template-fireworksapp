{{/*
	Get ticket 1
*/}}
{{- define "fireworks-app.get-ticket1" }}
	{{- $ticket := lookup "v1" "ConfigMap" "demo-system" (printf "%s-jira-ticket1" (include "fireworks-app.chart" .)) }}
	{{- $isTicketSolved := and $ticket (eq $ticket.data.status "done") }}
	{{- if $isTicketSolved }}
		{{- $ticket | toYaml }}
	{{- else }}
		{{- dict | toYaml }}
	{{- end }}
{{- end }}