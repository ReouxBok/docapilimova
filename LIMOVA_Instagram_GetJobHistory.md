# LIMOVA - Historique des Jobs Instagram

## Route

### Récupérer l'historique des jobs Instagram
**GET** `/instagram/getInstagramJobHistory`

Récupère l'historique des jobs Instagram.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "#/components/schemas/InstagramJobDto"
  }
}
``` 