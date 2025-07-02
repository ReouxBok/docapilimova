🧠 Agent concerné : Elio
# LIMOVA - Statistiques Connexions & Messages LinkedIn Automation

## Route

### Récupérer les statistiques de connexions et messages
**GET** `/linkedinAutomation/campaign/getConnectionsAndMessagesStats`

Récupère les statistiques de connexions et de messages pour les campagnes LinkedIn Automation.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "acceptedConnections": "number",
  "answeredMessages": "number",
  "acceptedConnectionsRate": "number",
  "answeredMessagesRate": "number",
  "dateRange": ["string"],
  "weeklyInvitationAcceptedStats": ["number"],
  "weeklyMessageSendedStats": ["number"]
}
``` 