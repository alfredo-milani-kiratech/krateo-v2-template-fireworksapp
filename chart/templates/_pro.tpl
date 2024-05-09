apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ include "fireworks-app.fullname" . }}
  labels:
    {{- include "fireworks-app.labels" . | nindent 4 }}
data:
  values: |
    { "serviceType": "{{ .Values.app.service.type }}",
      "servicePort": "{{ .Values.app.service.port }}",
      "env": "PRO"
    }