🧠 Agent concerné : John
# LIMOVA - Mise à jour d'un Post Social

## Route

### Mettre à jour un post social
**PATCH** `/socialPost/updateSocialPost/{id}`

Met à jour un post social existant.

**Paramètres :**
- `id` (string, requis) : L'ID du post social

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/SocialPostDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SocialPostDto"
}
``` 