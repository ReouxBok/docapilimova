# LIMOVA - Création de Jobs LinkedIn

## Route

### Créer un job LinkedIn
**POST** `/linkedin/createLinkedinJob`

Crée un nouveau job LinkedIn.

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