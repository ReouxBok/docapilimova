🧠 Agent concerné : John
# LIMOVA - Récupération des Posts Sociaux

## Route

### Récupérer tous les posts sociaux
**GET** `/socialPost/getSocialPosts`

Récupère tous les posts sociaux.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "#/components/schemas/SocialPostDto"
  }
}
``` 