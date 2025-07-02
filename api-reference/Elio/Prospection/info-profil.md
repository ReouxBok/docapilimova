🧠 Agent concerné : Elio
# LIMOVA - Récupération des Informations de Profil LinkedIn Automation

## Route

### Récupérer les informations d'un profil
**POST** `/linkedinAutomation/profile/info`

Récupère les informations d'un profil LinkedIn.

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
  "$ref": "#/components/schemas/ProfileInfoResponse"
}
``` 