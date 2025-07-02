🧠 Agent concerné : Elio
# LIMOVA - Récupération de CV LinkedIn Automation

## Route

### Récupérer un CV
**POST** `/linkedinAutomation/recruiter/cv`

Récupère le CV d'un candidat.

**Corps de requête :**
```json
{
  "type": "object",
  "properties": {
    "application_id": {
      "type": "string"
    },
    "country": {
      "type": "string",
      "default": "FR"
    }
  },
  "required": ["application_id"]
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/CvResponse"
}
``` 