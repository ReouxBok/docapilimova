🧠 Agent concerné : Elio
# LIMOVA - Récupération du Statut d'Invitation LinkedIn Automation

## Route

### Récupérer le statut d'une invitation
**POST** `/linkedinAutomation/network/invitation-status`

Récupère le statut d'une invitation de connexion.

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

**Coût :** 20 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InvitationStatusResponse"
}
``` 