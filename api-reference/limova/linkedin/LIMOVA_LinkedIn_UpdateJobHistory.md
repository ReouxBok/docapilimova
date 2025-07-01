# LIMOVA - Mise à jour de l'Historique d'un Job LinkedIn

## Route

### Mettre à jour l'historique d'un job LinkedIn
**PATCH** `/linkedin/updateLinkedinJobHistory/{innerId}`

Met à jour l'historique d'un job LinkedIn.

**Paramètres :**
- `innerId` (string, requis) : L'ID interne du job LinkedIn

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