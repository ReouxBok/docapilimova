🧠 Agent concerné : Mickael
# Agent Conversation - Récupérer les conversations par agent

## Description
Récupère toutes les conversations associées à un agent spécifique.

## Endpoint
```
GET /agent/conversation/conversationByAgent/{agentId}
```

## Paramètres

### Path
- `agentId`: string (requis) - ID de l'agent

## Réponse

### Succès (200)
```json
{
  "conversations": [
    {
      "id": "string",
      "status": "string",
      "summary": "string",
      "lastSummaryAt": "string",
      "qualification": "string",
      "interraction": ["object"],
      "agentId": "string",
      "clientOrgId": "string",
      "name": "string",
      "openAiThreadId": "string",
      "updatedAt": "string",
      "provider": "string",
      "snippetId": "string"
    }
  ]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/conversation/conversationByAgent/agent-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Retourne toutes les conversations (actives et fermées) pour cet agent
- Les conversations sont généralement triées par date de mise à jour (plus récentes en premier) 