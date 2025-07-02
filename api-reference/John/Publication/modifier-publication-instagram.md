🧠 Agent concerné : John
# LIMOVA - Mise à jour d'un Job Instagram

## Route

### Mettre à jour un job Instagram
**PATCH** `/instagram/updateInstagramJob/{id}`

Met à jour un job Instagram existant.

**Paramètres :**
- `id` (string, requis) : L'ID du job Instagram

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
``` 