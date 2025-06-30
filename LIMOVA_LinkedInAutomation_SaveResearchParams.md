# LIMOVA - Sauvegarde des Paramètres de Recherche de Profil LinkedIn Automation

## Route

### Sauvegarder les paramètres de recherche
**POST** `/linkedinAutomation/profile/history/save-research-params`

Sauvegarde les paramètres de recherche de profil LinkedIn.

**Corps de requête :**
```json
{
  "keyword": "string",
  "location": "string",
  "network": "string",
  "name": "string",
  "description": "string",
  "first_name": "string",
  "last_name": "string",
  "title": "string"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{}
``` 