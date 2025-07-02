🧠 Agent concerné : Elio
# LIMOVA - Recherche d'Entreprises LinkedIn Automation

## Route

### Rechercher des entreprises
**POST** `/linkedinAutomation/companies/search`

Recherche des entreprises LinkedIn selon différents critères.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "location": {
      "type": "string"
    },
    "sector": {
      "type": "string"
    },
    "keyword": {
      "type": "string"
    },
    "company_size": {
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
  "$ref": "#/components/schemas/CompanySearchResponse"
}
``` 