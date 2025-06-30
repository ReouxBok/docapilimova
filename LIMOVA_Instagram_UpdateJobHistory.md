# LIMOVA - Mise à jour de l'Historique d'un Job Instagram

## Route

### Mettre à jour l'historique d'un job Instagram
**PATCH** `/instagram/updateInstagramJobHistory/{innerId}`

Met à jour l'historique d'un job Instagram.

**Paramètres :**
- `innerId` (string, requis) : L'ID interne du job Instagram

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InstagramJobDto"
}
``` 