🧠 Agent concerné : Elio
# LIMOVA - Envoi de Message LinkedIn Automation

## Route

### Envoyer un message
**POST** `/linkedinAutomation/messages/send`

Envoie un message à un contact LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "linkedin_url": {
      "type": "string"
    },
    "message_text": {
      "type": "string"
    },
    "campaignId": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    },
    "media_link": {
      "type": "string",
      "description": "Media link to send with the message",
      "nullable": true
    },
    "additionalFormattedData": {
      "type": "object",
      "description": "Additional formatted data to send with the message",
      "nullable": true,
      "example": {
        "first_name": "John",
        "last_name": "Doe"
      }
    }
  },
  "required": ["linkedin_url", "message_text", "campaignId"]
}
```

**Coût :** 20 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkUpResponse"
}
``` 