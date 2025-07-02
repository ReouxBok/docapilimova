🧠 Agent concerné : Elio
# LIMOVA - Récupération des Connexions LinkedIn Automation

## Route

### Récupérer les connexions
**POST** `/linkedinAutomation/network/connections`

Récupère la liste des connexions LinkedIn.

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
  "$ref": "#/components/schemas/ConnectionsResponse"
}
``` 