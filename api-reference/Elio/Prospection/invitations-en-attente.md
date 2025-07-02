🧠 Agent concerné : Elio
# LIMOVA - Récupération des Invitations en Attente LinkedIn Automation

## Route

### Récupérer les invitations en attente
**POST** `/linkedinAutomation/network/invitations`

Récupère les invitations de connexion en attente.

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
  "$ref": "#/components/schemas/InvitationsResponse"
}
``` 