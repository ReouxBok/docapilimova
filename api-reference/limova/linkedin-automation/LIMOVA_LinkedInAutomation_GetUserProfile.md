# LIMOVA - Récupération du Profil Utilisateur LinkedIn Automation

## Route

### Récupérer le profil utilisateur
**POST** `/linkedinAutomation/me`

Récupère le profil utilisateur LinkedIn Automation.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "country": {
      "type": "string",
      "default": "FR"
    }
  }
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/UserProfileResponse"
}
``` 