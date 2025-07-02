🧠 Agent concerné : Mickael
# Agent Lead - Récupérer un lead par conversation

## Description
Récupère un lead spécifique par l'ID de sa conversation.

## Endpoint
```
GET /agent/lead/{conversationId}
```

## Paramètres

### Path
- `conversationId`: string (requis) - ID de la conversation d'agent

## Réponse

### Succès (200)
```json
{
  "agentConversationId": "string",
  "clientOrgId": "string",
  "firstName": "string",
  "lastName": "string",
  "email": "string",
  "phone": "string",
  "status": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead/conv-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- La conversation doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Si aucun lead n'est associé à cette conversation, une erreur 404 sera retournée 