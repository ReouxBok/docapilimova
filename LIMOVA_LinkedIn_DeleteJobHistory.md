# LIMOVA - Suppression de l'Historique d'un Job LinkedIn

## Route

### Supprimer l'historique d'un job LinkedIn
**DELETE** `/linkedin/deleteLinkedinJobHistory/{id}`

Supprime l'historique d'un job LinkedIn.

**Paramètres :**
- `id` (string, requis) : L'ID du job LinkedIn

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkedinJobDto"
}
``` 