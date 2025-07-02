🧠 Agent concerné : Lou
# LIMOVA - Suppression d'un Job SEO

## Route

### Supprimer un job SEO
**DELETE** `/seo/deleteSeoJob/{id}`

Supprime un job SEO.

**Paramètres :**
- `id` (string, requis) : L'ID du job SEO

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SeoJobDto"
}
``` 