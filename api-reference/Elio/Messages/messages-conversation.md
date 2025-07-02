🧠 Agent concerné : Elio
# LIMOVA - Récupération des Messages de Conversation LinkedIn Automation

## Route

### Récupérer les messages d'une conversation
**POST** `/linkedinAutomation/messages/conversation`

Récupère les messages d'une conversation spécifique.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "linkedin_url": {
      "type": "string"
    },
    "total_results": {
      "type": "number",
      "default": 10
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["conversation_id"]
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/components/schemas/ConversationResponse"
}
``` 