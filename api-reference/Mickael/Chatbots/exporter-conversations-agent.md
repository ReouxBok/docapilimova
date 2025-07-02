🧠 Agent concerné : Mickael
# Agent Conversation - Exporter les conversations par agent

## Description
Exporte toutes les conversations d'un agent spécifique.

## Endpoint
```
GET /agent/conversation/exportConversationByAgentId/{agentId}
```

## Paramètres

### Path
- `agentId`: string (requis) - ID de l'agent

### Query (optionnel)
- `header`: string - Champs d'en-tête optionnels (séparés par des virgules)
  - Champs disponibles: id, status, updatedAt, summary, lastSummaryAt, qualification, name, agentId, clean_interraction, interraction

## Réponse

### Succès (200)
```json
{
  "url": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/conversation/exportConversationByAgentId/agent-id-123?header=id,status,summary,qualification" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié
- L'URL retournée permet de télécharger le fichier d'export
- Le format d'export est généralement CSV ou Excel
- Inclut toutes les conversations (actives et fermées) pour cet agent 