# LIMOVA - Historique d'un Job LinkedIn par ID

## Route

### Récupérer l'historique d'un job LinkedIn par ID
**GET** `/linkedin/getLinkedinJobHistoryById/{id}`

Récupère l'historique d'un job LinkedIn spécifique.

**Paramètres :**
- `id` (string, requis) : L'ID du job LinkedIn

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkedinJobDto"
}
``` 