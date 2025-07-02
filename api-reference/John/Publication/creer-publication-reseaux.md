🧠 Agent concerné : John
# LIMOVA - Création de Posts Sociaux

## Route

### Créer un post social
**POST** `/socialPost/createSocialPost`

Crée un nouveau post social.

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