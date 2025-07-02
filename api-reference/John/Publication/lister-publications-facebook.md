🧠 Agent concerné : John
# LIMOVA - Récupération des Jobs Facebook

## Route

### Récupérer tous les jobs Facebook
**GET** `/facebook/getFacebookJobs`

Récupère tous les jobs Facebook.

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