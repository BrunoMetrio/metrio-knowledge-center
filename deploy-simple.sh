#!/bin/bash

# Script de déploiement simplifié sur GCP Cloud Run
# Utilise les buildpacks au lieu de Dockerfile

set -e

PROJECT_ID="metrio-ai-poc"
SERVICE_NAME="knowledge-center"
REGION="northamerica-northeast1"

echo "🚀 Déploiement simplifié du Knowledge Center..."

gcloud config set project $PROJECT_ID

# Déploiement avec buildpack (pas de Dockerfile nécessaire)
gcloud run deploy $SERVICE_NAME \
    --source . \
    --platform managed \
    --region $REGION \
    --allow-unauthenticated \
    --memory 512Mi \
    --cpu 1 \
    --max-instances 10 \
    --set-env-vars "PORT=8080"

echo ""
echo "✅ Déploiement terminé !"
