# LIMOVA - Suppression de l'Historique d'un Job Facebook

## Route

### Supprimer l'historique d'un job Facebook
**DELETE** `/facebook/deleteFacebookJobHistory/{id}`

Supprime l'historique d'un job Facebook.

**Paramètres :**
- `id` (string, requis) : L'ID du job Facebook

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/FacebookJobDto"
}
``` 