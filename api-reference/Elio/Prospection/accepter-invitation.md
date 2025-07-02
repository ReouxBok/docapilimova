🧠 Agent concerné : Elio
# LIMOVA - Acceptation d'Invitation LinkedIn Automation

## Route

### Accepter une invitation
**POST** `/linkedinAutomation/network/accept-invitation`

Accepte une invitation de connexion LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "shared_secret": {
      "type": "string"
    },
    "entity_urn": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["shared_secret", "entity_urn"]
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkUpResponse"
}
``` 