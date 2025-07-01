# LIMOVA - Commentaire sur Post LinkedIn Automation

## Route

### Commenter un post
**POST** `/linkedinAutomation/posts/comment`

Commenter un post LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "post_url": {
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
  "required": ["post_url", "message"]
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "description": ""
}
``` 