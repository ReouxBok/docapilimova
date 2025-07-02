🧠 Agent concerné : John
# LIMOVA - Mise à jour d'un Job Facebook

## Route

### Mettre à jour un job Facebook
**PATCH** `/facebook/updateFacebookJob/{id}`

Met à jour un job Facebook existant.

**Paramètres :**
- `id` (string, requis) : L'ID du job Facebook

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/FacebookJobDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/FacebookJobDto"
}
``` 