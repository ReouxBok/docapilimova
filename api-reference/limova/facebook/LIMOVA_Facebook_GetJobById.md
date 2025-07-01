# LIMOVA - Récupération d'un Job Facebook par ID

## Route

### Récupérer un job Facebook par ID
**GET** `/facebook/getFacebookJobById/{id}`

Récupère un job Facebook spécifique par son ID.

**Paramètres :**
- `id` (string, requis) : L'ID du job Facebook

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/FacebookJobDto"
}
``` 