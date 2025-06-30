# Agent Conversation - Supprimer une conversation

## Description
Supprime une conversation existante.

## Endpoint
```
DELETE /agent/conversation/conversation/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de la conversation à supprimer

## Réponse

### Succès (200)
```json
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
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/conversation/conversation/conv-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- La conversation doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- Tous les leads associés à cette conversation seront également supprimés 