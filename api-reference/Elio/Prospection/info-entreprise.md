🧠 Agent concerné : Elio
# LIMOVA - Récupération d'Informations d'Entreprise LinkedIn Automation

## Route

### Récupérer les informations d'une entreprise
**POST** `/linkedinAutomation/companies/info`

Récupère les informations d'une entreprise LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "company_url": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["company_url"]
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/CompanyInfoResponse"
}
``` 