# LIMOVA - Mise à jour de l'Historique d'un Post Social

## Route

### Mettre à jour l'historique d'un post social
**PATCH** `/socialPost/updateSocialPostHistory/{innerId}`

Met à jour l'historique d'un post social.

**Paramètres :**
- `innerId` (string, requis) : L'ID interne du post social

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