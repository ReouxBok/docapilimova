🧠 Agent concerné : Lou
# LIMOVA - Récupération des Jobs SEO

## Route

### Récupérer tous les jobs SEO
**GET** `/seo/getSeoJobs`

Récupère tous les jobs SEO.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "#/components/schemas/SeoJobDto"
  }
}
``` 