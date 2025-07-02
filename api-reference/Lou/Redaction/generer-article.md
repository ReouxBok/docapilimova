🧠 Agent concerné : Lou
# LIMOVA - Génération d'Articles SEO

## Route

### Générer un article basé sur des mots-clés
**POST** `/seo/generateArticle`

Génère un article basé sur les mots-clés fournis.

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/GenerateArticle"
}
```

**Coût :** 2000 Token(s)

**Réponse :**
```json
{
  "type": "string",
  "description": "The generated article"
}
``` 