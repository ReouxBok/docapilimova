🧠 Agent concerné : Elio
# LIMOVA - Recherche de Profils LinkedIn Automation

## Route

### Rechercher des profils
**POST** `/linkedinAutomation/profile/search`

Recherche des profils LinkedIn selon différents critères.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "keyword": {
      "type": "string"
    },
    "location": {
      "type": "string"
    },
    "company_url": {
      "type": "string"
    },
    "school_url": {
      "type": "string"
    },
    "network": {
      "type": "string",
      "enum": ["F", "S", "O", "F,S"]
    },
    "total_results": {
      "type": "number",
      "default": 10
    },
    "country": {
      "type": "string",
      "default": "FR"
    },
    "first_name": {
      "type": "string"
    },
    "last_name": {
      "type": "string"
    },
    "title": {
      "type": "string"
    }
  }
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/components/schemas/ProfileSearchResponse"
}
``` 