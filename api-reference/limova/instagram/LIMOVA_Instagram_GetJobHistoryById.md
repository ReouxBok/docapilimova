# LIMOVA - Historique d'un Job Instagram par ID

## Route

### Récupérer l'historique d'un job Instagram par ID
**GET** `/instagram/getInstagramJobHistoryById/{id}`

Récupère l'historique d'un job Instagram spécifique.

**Paramètres :**
- `id` (string, requis) : L'ID du job Instagram

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
``` 