🧠 Agent concerné : Elio
# LIMOVA - Envoi de Demande de Connexion LinkedIn Automation

## Route

### Envoyer une demande de connexion
**POST** `/linkedinAutomation/network/connect`

Envoie une demande de connexion à un profil LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "linkedin_url": {
      "type": "string"
    },
    "campaignId": {
      "type": "string"
    },
    "message": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["linkedin_url", "campaignId"]
}
```

**Coût :** 20 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkUpResponse"
}
``` 