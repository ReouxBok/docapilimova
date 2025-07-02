🧠 Agent concerné : Elio
# LIMOVA - Recherche de Posts LinkedIn Automation

## Route

### Rechercher des posts
**POST** `/linkedinAutomation/posts/search`

Recherche des posts LinkedIn selon différents critères.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "post_type": {
      "type": "string",
      "description": "Type of posts: \"photos\", \"jobs\", or \"videos\""
    },
    "sort_by": {
      "type": "string",
      "default": "date_posted",
      "description": "\"date_posted\" or \"relevance\""
    },
    "keyword": {
      "type": "string"
    },
    "post_date": {
      "type": "string",
      "description": "\"past-24h\", \"past-week\", or \"past-month\""
    },
    "linkedin_url": {
      "type": "string"
    },
    "total_results": {
      "type": "number",
      "default": 10
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  }
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/components/schemas/PostSearchResponse"
}
``` 