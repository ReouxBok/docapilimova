# LIMOVA - Récupération des Posts de Job LinkedIn Automation

## Route

### Récupérer les posts de job
**POST** `/linkedinAutomation/recruiter/posts`

Récupère les posts de job LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
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
  "$ref": "#/components/schemas/JobPostsResponse"
}
``` 