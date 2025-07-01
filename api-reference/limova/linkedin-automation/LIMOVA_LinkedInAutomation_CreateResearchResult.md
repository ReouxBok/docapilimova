# LIMOVA - Création d'un Résultat de Recherche de Profil LinkedIn Automation

## Route

### Créer un résultat de recherche
**POST** `/linkedinAutomation/profile/history/create-research-result`

Crée un résultat de recherche de profil LinkedIn.

**Corps de requête :**
```json
{
  "profilesUrls": ["string"],
  "name": "string"
}
```

**Coût :** 20 Token(s)

**Réponse :**
```json
{}
``` 