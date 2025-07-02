🧠 Agent concerné : Lou
# LIMOVA - Suppression de l'Historique d'un Job SEO

## Route

### Supprimer l'historique d'un job SEO
**DELETE** `/seo/deleteSeoJobHistory/{id}`

Supprime l'historique d'un job SEO.

**Paramètres :**
- `id` (string, requis) : L'ID du job SEO

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SeoJobDto"
}
``` 