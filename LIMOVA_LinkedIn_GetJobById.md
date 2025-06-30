# LIMOVA - Récupération d'un Job LinkedIn par ID

## Route

### Récupérer un job LinkedIn par ID
**GET** `/linkedin/getLinkedinJobById/{id}`

Récupère un job LinkedIn spécifique par son ID.

**Paramètres :**
- `id` (string, requis) : L'ID du job LinkedIn

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkedinJobDto"
}
``` 