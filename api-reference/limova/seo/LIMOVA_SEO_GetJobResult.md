# LIMOVA - Résultat d'un Job SEO

## Route

### Récupérer le résultat d'un job SEO
**GET** `/seo/getSeoJobResult/{id}`

Récupère le résultat d'un job SEO.

**Paramètres :**
- `id` (string, requis) : L'ID du job SEO

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SeoJobDto"
}
``` 