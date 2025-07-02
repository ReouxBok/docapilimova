🧠 Agent concerné : Elio
# LIMOVA - Récupération des Candidats LinkedIn Automation

## Route

### Récupérer les candidats
**POST** `/linkedinAutomation/recruiter/candidates`

Récupère les candidats pour un job LinkedIn.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "job_id": {
      "type": "string"
    },
    "total_results": {
      "type": "number",
      "default": 10
    },
    "start": {
      "type": "string"
    },
    "sortType": {
      "type": "string",
      "default": "RELEVANCE"
    },
    "sortOrder": {
      "type": "string",
      "default": "DESCENDING"
    },
    "ratings": {
      "type": "string",
      "default": "GOOD_FIT,MAYBE,UNRATED"
    },
    "location": {
      "type": "string"
    },
    "yearsOfExperience": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["job_id"]
}
```

**Coût :** 20 Token(s) + 0.6 Token(s) par résultat

**Réponse :**
```json
{
  "$ref": "#/components/schemas/CandidateResponse"
}
``` 