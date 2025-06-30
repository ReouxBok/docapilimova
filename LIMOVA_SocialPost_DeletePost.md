# LIMOVA - Suppression d'un Post Social

## Route

### Supprimer un post social
**DELETE** `/socialPost/deleteSocialPost/{id}`

Supprime un post social.

**Paramètres :**
- `id` (string, requis) : L'ID du post social

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SocialPostDto"
}
``` 