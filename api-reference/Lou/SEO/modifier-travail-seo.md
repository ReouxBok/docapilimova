🧠 Agent concerné : Lou
# LIMOVA - Mise à jour d'un Job SEO

## Route

### Mettre à jour un job SEO
**PATCH** `/seo/updateSeoJob/{id}`

Met à jour un job SEO existant.

**Paramètres :**
- `id` (string, requis) : L'ID du job SEO

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/SeoJobDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SeoJobDto"
}
``` 