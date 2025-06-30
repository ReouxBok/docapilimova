# LIMOVA - Historique des Jobs LinkedIn

## Route

### Récupérer l'historique des jobs LinkedIn
**GET** `/linkedin/getLinkedinJobHistory`

Récupère l'historique des jobs LinkedIn.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "#/components/schemas/LinkedinJobDto"
  }
}
``` 