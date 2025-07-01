# LIMOVA - Like de Post LinkedIn Automation

## Route

### Liker un post
**POST** `/linkedinAutomation/posts/like`

Like un post LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "post_url": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["post_url"]
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkUpResponse"
}
``` 