# Routes par Agent

Cette page présente un aperçu de l'organisation de l'API Limova par agent responsable.

## Tableau de synthèse

| Agent | Fonction principale | Exemples de routes |
|-------|-------------------|-------------------|
| **John** | Réseaux sociaux, création IA, planning, publication | `/instagram/share`, `/facebook/pages`, `/social-post/create` |
| **Mickael** | Chatbots et IA conversationnelle | `/agents/create`, `/chatbots/create`, `/connectors/snippet` |
| **Lou** | SEO & génération de contenus | `/seo/generate-article`, `/seo/create-job`, `/seo/platforms` |
| **Elio** | Prospection LinkedIn | `/linkedin/campaigns/create`, `/linkedin-automation/search-profiles` |
| **Tom** | Appels automatiques | `/calls/campaigns/create`, `/robotappel/start`, `/calls/phone-numbers` |
| **Charly** | Accès API, transcription, présentation | `/billing/balance`, `/transcription/audio`, `/slides/generate` |
| **Julia** | Juridique (agent actif, sans routes actives) | *(structure prête)* |
| **Manue** | Comptabilité (agent actif, sans routes actives) | *(structure prête)* |

## Détail par agent

### 👨‍💻 John - Réseaux sociaux & Publication
**Responsable de :** Instagram, Facebook, Social Post, création IA, planning et publication

**Sous-dossiers :**
- **Publication** : Gestion des publications sur tous les réseaux sociaux
- **Création IA** : Génération de contenu par IA
- **Studio** : Outils de création et édition
- **Plateformes** : Gestion des plateformes de publication

### 🤖 Mickael - Chatbots & IA
**Responsable de :** Agents conversationnels, entraînement, intégrations Web/WhatsApp

**Sous-dossiers :**
- **Chatbots** : Création et gestion des agents conversationnels
- **Entraînement** : Formation et amélioration des agents
- **Intégrations** : Connecteurs Web, WhatsApp, snippets

### 📝 Lou - SEO & Rédaction
**Responsable de :** SEO, rédaction, audit, publications automatisées

**Sous-dossiers :**
- **SEO** : Optimisation pour les moteurs de recherche
- **Rédaction** : Génération et gestion d'articles
- **Audit** : Analyse et évaluation de contenu
- **Publications** : Publications automatisées

### 🔗 Elio - LinkedIn & Prospection
**Responsable de :** Prospection LinkedIn, campagnes, messages, statistiques

**Sous-dossiers :**
- **Prospection** : Recherche et contact de prospects
- **Messages** : Envoi et gestion des messages
- **Statistiques** : Suivi des performances
- **Campagnes** : Gestion des campagnes LinkedIn

### 📞 Tom - Appels & Communication
**Responsable de :** Appels vocaux, campagnes, agents, numéros, agenda

**Sous-dossiers :**
- **Campagnes** : Gestion des campagnes d'appels
- **Agents vocaux** : Configuration des agents d'appel
- **Numéros** : Gestion des numéros de téléphone
- **Agenda** : Planification et historique des appels
- **Crédits** : Gestion des crédits d'appel

### 🔑 Charly - API & Outils
**Responsable de :** Clés API, transcription audio, génération de slides

**Sous-dossiers :**
- **API** : Gestion des clés API et facturation
- **Transcription** : Services de transcription audio
- **Présentations** : Génération de slides et présentations

### 👩‍⚖️ Julia - Juridique
**Responsable de :** Aspects juridiques et conformité
*Agent actif, structure prête pour futures routes*

### 💰 Manue - Comptabilité
**Responsable de :** Gestion comptable et financière
*Agent actif, structure prête pour futures routes*

## Navigation

Chaque agent dispose de sa propre section dans la documentation avec des sous-dossiers organisés par fonctionnalité. Utilisez la navigation latérale pour accéder aux routes spécifiques de chaque agent. 