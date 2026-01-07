#!/bin/bash

# Script de déploiement sur GCP Cloud Run
# Usage: ./deploy.sh

set -e

echo "🚀 Déploiement du Knowledge Center sur GCP Cloud Run..."

# Variables à configurer
PROJECT_ID="metrio-ai-poc"
SERVICE_NAME="knowledge-center"
REGION="northamerica-northeast1"  # Montréal, Canada

echo ""
echo "⚙️  Configuration:"
echo "   Project ID: $PROJECT_ID"
echo "   Service: $SERVICE_NAME"
echo "   Region: $REGION"
echo ""

# Vérifier que gcloud est installé
if ! command -v gcloud &> /dev/null; then
    echo "❌ gcloud CLI n'est pas installé. Installez-le depuis:"
    echo "   https://cloud.google.com/sdk/docs/install"
    exit 1
fi

# Configurer le projet
echo "📝 Configuration du projet GCP..."
gcloud config set project $PROJECT_ID

# Activer les APIs nécessaires
echo "🔧 Activation des APIs GCP..."
gcloud services enable cloudbuild.googleapis.com
gcloud services enable run.googleapis.com
gcloud services enable artifactregistry.googleapis.com

# Construire et déployer sur Cloud Run (sans modifier les IAM policies)

# Construire et déployer sur Cloud Run
echo "🏗️  Construction et déploiement de l'image Docker..."
gcloud run deploy $SERVICE_NAME \
    --source . \
    --platform managed \
    --region $REGION \
    --allow-unauthenticated \
    --memory 512Mi \
    --cpu 1 \
    --max-instances 10 \
    --port 8080

echo ""
echo "✅ Déploiement terminé avec succès !"
echo ""
echo "🌐 Votre Knowledge Center est disponible à l'URL affichée ci-dessus"
