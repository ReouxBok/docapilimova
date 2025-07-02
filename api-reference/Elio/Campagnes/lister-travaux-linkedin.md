🧠 Agent concerné : Elio
# LIMOVA - Récupération des Jobs LinkedIn

## Route

### Récupérer tous les jobs LinkedIn
**GET** `/linkedin/getLinkedinJobs`

Récupère tous les jobs LinkedIn.

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