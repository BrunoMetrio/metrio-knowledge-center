# 🚀 Guide de Déploiement sur GCP Cloud Run

Ce guide vous explique comment déployer votre Knowledge Center sur Google Cloud Platform.

## 📋 Prérequis

1. **Compte GCP** : Vous devez avoir un compte Google Cloud Platform
2. **Projet GCP** : Créez un projet sur [console.cloud.google.com](https://console.cloud.google.com)
3. **Facturation activée** : Cloud Run nécessite un compte avec facturation (offre d'essai gratuite disponible)

## 🛠️ Installation de gcloud CLI

### macOS
```bash
# Télécharger et installer gcloud CLI
curl https://sdk.cloud.google.com | bash

# Redémarrer le terminal, puis initialiser
gcloud init
```

Suivez les instructions pour vous connecter avec votre compte Google.

## ⚙️ Configuration

1. **Trouvez votre Project ID** :
   - Allez sur [console.cloud.google.com](https://console.cloud.google.com)
   - Le Project ID est affiché en haut de la page

2. **Modifiez le fichier `deploy.sh`** :
   ```bash
   # Ouvrez le fichier et changez cette ligne:
   PROJECT_ID="votre-project-id"  # Remplacez par votre vrai Project ID
   ```

3. **Rendez le script exécutable** :
   ```bash
   chmod +x deploy.sh
   ```

## 🚀 Déploiement

Depuis le dossier `zendesk-docs`, lancez simplement :

```bash
./deploy.sh
```

Le script va :
- ✅ Activer les APIs nécessaires
- ✅ Construire l'image Docker
- ✅ Déployer sur Cloud Run
- ✅ Vous donner l'URL publique de votre site

**Le déploiement prend environ 2-3 minutes.**

## 🌐 Accès au Site

Une fois déployé, vous recevrez une URL comme :
```
https://knowledge-center-xxxxx-ew.a.run.app
```

Votre Knowledge Center sera accessible publiquement à cette adresse !

## 💰 Coûts

Cloud Run est très économique :
- **Gratuit** : 2 millions de requêtes/mois
- **Gratuit** : 360,000 Go-secondes de mémoire/mois
- Vous ne payez que ce que vous utilisez (le conteneur s'éteint automatiquement quand il n'y a pas de trafic)

Pour un Knowledge Center avec peu de trafic, **c'est souvent gratuit** !

## 🔄 Mettre à Jour le Site

Pour mettre à jour votre documentation :

1. Modifiez vos fichiers `.md` dans le dossier `docs/`
2. Relancez le déploiement :
   ```bash
   ./deploy.sh
   ```

C'est tout ! Les changements sont en ligne en 2-3 minutes.

## 🎨 Personnalisation

### Changer le nom du service

Dans `deploy.sh`, modifiez :
```bash
SERVICE_NAME="votre-nom"  # Change l'URL finale
```

### Ajouter un domaine personnalisé

1. Allez sur [console.cloud.google.com/run](https://console.cloud.google.com/run)
2. Cliquez sur votre service
3. Onglet "Domaines personnalisés"
4. Suivez les instructions pour mapper votre domaine

## 🆘 Aide et Dépannage

### Erreur d'authentification
```bash
gcloud auth login
gcloud config set project VOTRE-PROJECT-ID
```

### Voir les logs
```bash
gcloud run services logs read knowledge-center --region europe-west1
```

### Supprimer le service
```bash
gcloud run services delete knowledge-center --region europe-west1
```

## 📞 Support

- [Documentation Cloud Run](https://cloud.google.com/run/docs)
- [Documentation MkDocs Material](https://squidfunk.github.io/mkdocs-material/)
