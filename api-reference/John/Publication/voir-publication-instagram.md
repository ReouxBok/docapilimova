🧠 Agent concerné : John
# LIMOVA - Récupération d'un Job Instagram par ID

## Route

### Récupérer un job Instagram par ID
**GET** `/instagram/getInstagramJobById/{id}`

Récupère un job Instagram spécifique par son ID.

**Paramètres :**
- `id` (string, requis) : L'ID du job Instagram

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
``` 