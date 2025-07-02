🧠 Agent concerné : John
# LIMOVA - Suppression d'un Job Facebook

## Route

### Supprimer un job Facebook
**DELETE** `/facebook/deleteFacebookJob/{id}`

Supprime un job Facebook.

**Paramètres :**
- `id` (string, requis) : L'ID du job Facebook

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/FacebookJobDto"
}
``` 