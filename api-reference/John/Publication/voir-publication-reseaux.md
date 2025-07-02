🧠 Agent concerné : John
# LIMOVA - Récupération d'un Post Social par ID

## Route

### Récupérer un post social par ID
**GET** `/socialPost/getSocialPostById/{id}`

Récupère un post social spécifique par son ID.

**Paramètres :**
- `id` (string, requis) : L'ID du post social

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/SocialPostDto"
}
``` 