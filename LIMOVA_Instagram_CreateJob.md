# LIMOVA - Création de Jobs Instagram

## Route

### Créer un job Instagram
**POST** `/instagram/createInstagramJob`

Crée un nouveau job Instagram.

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