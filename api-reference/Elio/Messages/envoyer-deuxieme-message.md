🧠 Agent concerné : Elio
# LIMOVA - Envoi de Second Message LinkedIn Automation

## Route

### Envoyer un second message
**POST** `/linkedinAutomation/campaign/send-second-message`

Envoie un second message dans une campagne.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "campaignId": {
      "type": "string"
    },
    "linkedinUrls": {
      "type": "array",
      "items": {
        "type": "string"
      }
    }
  },
  "required": ["campaignId", "linkedinUrls"]
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/definitions/linkedinCampaignSchema"
}
``` 