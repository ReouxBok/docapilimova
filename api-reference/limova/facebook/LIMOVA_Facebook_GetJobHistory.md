# LIMOVA - Historique des Jobs Facebook

## Route

### Récupérer l'historique des jobs Facebook
**GET** `/facebook/getFacebookJobHistory`

Récupère l'historique des jobs Facebook.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "#/components/schemas/FacebookJobDto"
  }
}
``` 