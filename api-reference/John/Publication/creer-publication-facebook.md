🧠 Agent concerné : John
# LIMOVA - Création de Jobs Facebook

## Route

### Créer un job Facebook
**POST** `/facebook/createFacebookJob`

Crée un nouveau job Facebook.

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