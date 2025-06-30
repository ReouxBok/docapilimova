# LIMOVA - Récupération des Contacts de Profil LinkedIn Automation

## Route

### Récupérer les contacts d'un profil
**POST** `/linkedinAutomation/profile/contact`

Récupère les informations de contact d'un profil LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "linkedin_url": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["linkedin_url"]
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/ContactProfileResponse"
}
``` 