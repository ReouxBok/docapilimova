# LIMOVA - Historique d'un Job Facebook par ID

## Route

### Récupérer l'historique d'un job Facebook par ID
**GET** `/facebook/getFacebookJobHistoryById/{id}`

Récupère l'historique d'un job Facebook spécifique.

**Paramètres :**
- `id` (string, requis) : L'ID du job Facebook

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/FacebookJobDto"
}
``` 