# LIMOVA - Suppression d'un Job LinkedIn

## Route

### Supprimer un job LinkedIn
**DELETE** `/linkedin/deleteLinkedinJob/{id}`

Supprime un job LinkedIn.

**Paramètres :**
- `id` (string, requis) : L'ID du job LinkedIn

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkedinJobDto"
}
``` 