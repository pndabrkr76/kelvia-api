# Changelog

## v1.1.0 — 2026-11-19
### Ajouté
- Site vitrine du festival (nginx, port 8080)
- Sonde externe Uptime Kuma
- Instrumentation Prometheus (/metrics) et tableau de bord Grafana
- Troisième machine de recette (Terraform) et message d'ouverture par environnement (Ansible)
- Manifestes Kubernetes (k8s/)
### Modifié
- Prix du Pass 1 jour : 59 € à 69 €

## v1.0.0 — 2026-11-18
### Ajouté
- Nom du festival sur la page de billetterie
- Pipeline d'intégration continue (ci.yml) et badge d'état
- Protection de main par un ruleset
- Livraison sur tag (livraison.yml)

## v0.1.0 — 2026-11-18
### Ajouté
- Page de billetterie et routes /health et /billets
- Tests pytest de l'API
- Environnement décrit dans .devcontainer/
