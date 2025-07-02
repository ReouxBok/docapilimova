🧠 Agent concerné : Elio
# LIMOVA - Récupération des Réactions de Post LinkedIn Automation

## Route

### Récupérer les réactions d'un post
**POST** `/linkedinAutomation/posts/reactions`

Récupère les réactions d'un post LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "post_url": {
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
  "required": ["post_url"]
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/components/schemas/PostReactionsResponse"
}
``` 