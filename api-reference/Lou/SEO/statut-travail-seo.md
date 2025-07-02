🧠 Agent concerné : Lou
# LIMOVA - Statut d'un Job SEO

## Route

### Récupérer le statut d'un job SEO
**GET** `/seo/getSeoJobStatus/{id}`

Récupère le statut d'un job SEO.

**Paramètres :**
- `id` (string, requis) : L'ID du job SEO

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SeoJobDto"
}
``` 