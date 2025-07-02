🧠 Agent concerné : Elio
# LIMOVA - Récupération des Recommandations Réseau LinkedIn Automation

## Route

### Récupérer les recommandations réseau
**POST** `/linkedinAutomation/network/recommendations`

Récupère les recommandations de connexions du réseau.

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
  "$ref": "#/components/schemas/NetworkRecommendationsResponse"
}
``` 