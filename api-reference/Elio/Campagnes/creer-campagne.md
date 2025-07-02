🧠 Agent concerné : Elio
# LIMOVA - Création de Campagne LinkedIn Automation

## Route

### Créer une campagne
**POST** `/linkedinAutomation/campaign/create`

Crée une nouvelle campagne LinkedIn Automation.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "campaignType": {
      "type": "string",
      "enum": ["INVITATION", "MESSAGE", "INVITATION_MESSAGE"]
    },
    "campaignName": {
      "type": "string"
    },
    "profiles": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "profileUrl": {
            "type": "string"
          },
          "name": {
            "type": "string"
          },
          "profilePictureUrl": {
            "type": "string"
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
        }
      }
    },
    "profileUrl": {
      "type": "string"
    },
    "invitationMessage": {
      "type": "string"
    },
    "firstMessage": {
      "type": "string"
    },
    "secondMessage": {
      "type": "string"
    },
    "first_media_link": {
      "type": "file",
      "format": "binary",
      "description": "First media file"
    },
    "second_media_link": {
      "type": "file",
      "format": "binary",
      "description": "Second media file"
    }
  },
  "required": ["campaignType", "campaignName", "profiles", "profileUrl"]
}
```

**Coût :** 20 Token(s) + 0.2 Token(s) par MB + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/definitions/linkedinCampaignSchema"
}
``` 