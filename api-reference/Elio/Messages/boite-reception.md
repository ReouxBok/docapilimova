🧠 Agent concerné : Elio
# LIMOVA - Récupération de la Boîte de Réception LinkedIn Automation

## Route

### Récupérer la boîte de réception
**POST** `/linkedinAutomation/messages/inbox`

Récupère les messages de la boîte de réception.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "total_results": {
      "type": "number",
      "default": 10
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  }
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/components/schemas/MessagesResponse"
}
``` 