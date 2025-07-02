🧠 Agent concerné : Elio
# LIMOVA - Mise à jour d'un Job LinkedIn

## Route

### Mettre à jour un job LinkedIn
**PATCH** `/linkedin/updateLinkedinJob/{id}`

Met à jour un job LinkedIn existant.

**Paramètres :**
- `id` (string, requis) : L'ID du job LinkedIn

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/LinkedinJobDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/LinkedinJobDto"
}
``` 