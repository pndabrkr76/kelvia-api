#!/usr/bin/env bash
# Ouvre un tunnel vers chaque service du cluster. Ctrl+C arrête tout.
trap 'kill 0' INT TERM
kubectl port-forward svc/api        8001:8000 &
kubectl port-forward svc/vitrine    8090:80   &
kubectl port-forward svc/grafana    3002:3000 &
kubectl port-forward svc/prometheus 9091:9090 &
kubectl port-forward svc/kuma       3003:3001 &
wait
