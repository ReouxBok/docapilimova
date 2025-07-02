🧠 Agent concerné : John
# LIMOVA - Suppression d'un Job Instagram

## Route

### Supprimer un job Instagram
**DELETE** `/instagram/deleteInstagramJob/{id}`

Supprime un job Instagram.

**Paramètres :**
- `id` (string, requis) : L'ID du job Instagram

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
``` 