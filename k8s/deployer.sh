#!/usr/bin/env bash
# Déploie tous les services dans le cluster kind « kelvia » (à lancer depuis la racine du dépôt).
set -e
cm() { kubectl create configmap "$@" --dry-run=client -o yaml | kubectl apply -f -; }
cm prometheus-conf    --from-file=monitoring/prometheus.yml
cm grafana-dashboards --from-file=monitoring/dashboards
cm grafana-datasources --from-file=monitoring/datasources
cm vitrine-site       --from-file=vitrine
kubectl apply -f k8s/api.yaml -f k8s/tout.yaml
