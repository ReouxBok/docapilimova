# LIMOVA - Suppression de l'Historique d'un Post Social

## Route

### Supprimer l'historique d'un post social
**DELETE** `/socialPost/deleteSocialPostHistory/{id}`

Supprime l'historique d'un post social.

**Paramètres :**
- `id` (string, requis) : L'ID du post social

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SocialPostDto"
}
``` 