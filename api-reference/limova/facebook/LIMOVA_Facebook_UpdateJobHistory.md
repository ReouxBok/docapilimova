# LIMOVA - Mise à jour de l'Historique d'un Job Facebook

## Route

### Mettre à jour l'historique d'un job Facebook
**PATCH** `/facebook/updateFacebookJobHistory/{innerId}`

Met à jour l'historique d'un job Facebook.

**Paramètres :**
- `innerId` (string, requis) : L'ID interne du job Facebook

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