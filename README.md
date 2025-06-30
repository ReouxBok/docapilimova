# Documentation API Kainotomia - Mintlify

Ce projet contient la documentation complète de l'API Kainotomia, organisée et optimisée pour Mintlify.

## 🚀 Déploiement sur Mintlify

### Prérequis
- Compte Mintlify (https://mintlify.com)
- Node.js installé
- Mintlify CLI installé : `npm install -g mintlify`

### Étapes de déploiement

1. **Cloner ce repository**
```bash
git clone <votre-repo>
cd Doc\ API
```

2. **Vérifier la structure**
```
├── mint.json          # Configuration Mintlify
├── docs/              # Documentation organisée
│   ├── introduction.mdx
│   ├── quickstart.mdx
│   ├── authentication.mdx
│   ├── agents/
│   ├── conversations/
│   ├── leads/
│   ├── connectors/
│   ├── limova/
│   ├── robotappel/
│   ├── chat/
│   └── bot/
└── README.md
```

3. **Tester localement**
```bash
mintlify dev
```
Ouvrez http://localhost:3000 pour prévisualiser

4. **Déployer sur votre instance Mintlify**
```bash
# Connectez-vous à votre compte Mintlify
mintlify login

# Déployez sur votre instance existante
# Votre URL : https://kainotomia-aa039c7f.mintlify.app/
```

## 📁 Structure de la documentation

### Modules principaux
- **Agents** : Gestion des agents IA conversationnels
- **Conversations** : Gestion des conversations client
- **Leads** : Gestion des prospects
- **Connecteurs** : Intégrations WhatsApp et autres plateformes
- **LIMOVA** : Suite d'outils d'automatisation
  - Facturation
  - Fichiers
  - Utilisateurs
  - SEO
  - Social Post
  - LinkedIn Automation
  - Instagram
  - Facebook
  - Outils (Images, Audio, PDF, Présentations)
- **RobotAppel** : Système d'appels automatisés
- **Chat** : Gestion des conversations
- **Bot** : Configuration des chatbots

### Format des fichiers
- Extension : `.mdx`
- Métadonnées : Frontmatter YAML
- Structure standardisée pour chaque route

## 🔧 Configuration

### mint.json
- Nom : "Kainotomia API"
- Couleurs : Bleu (#0EA5E9)
- Navigation organisée par modules
- Liens vers support et dashboard

### Personnalisation
- Logo : Ajoutez vos logos dans `/logo/`
- Favicon : Ajoutez votre favicon
- Couleurs : Modifiez dans `mint.json`
- Navigation : Organisez selon vos besoins

## 📊 Statistiques

- **202 fichiers** de documentation
- **Structure modulaire** organisée
- **Documentation complète** de toutes les routes
- **Exemples cURL** pour chaque endpoint
- **Gestion d'erreurs** détaillée
- **Notes métier** pour chaque route

## 🛠️ Maintenance

### Ajouter une nouvelle route
1. Créer le fichier `.mdx` dans le bon dossier
2. Ajouter les métadonnées frontmatter
3. Suivre la structure standardisée
4. Mettre à jour la navigation dans `mint.json`

### Mettre à jour une route existante
1. Modifier le fichier `.mdx` correspondant
2. Tester localement avec `mintlify dev`
3. Déployer les changements

## 📞 Support

- **Documentation Mintlify** : https://mintlify.com/docs
- **Support Kainotomia** : support@kainotomia.com
- **Dashboard** : https://dashboard.kainotomia.com

## 🎯 Prochaines étapes

1. **Personnaliser le design** selon votre marque
2. **Ajouter des exemples** de code dans différents langages
3. **Intégrer des vidéos** de démonstration
4. **Ajouter des tutoriels** interactifs
5. **Configurer l'analytics** pour suivre l'usage

---

**URL de votre documentation** : https://kainotomia-aa039c7f.mintlify.app/ 