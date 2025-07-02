🧠 Agent concerné : Mickael
# Agent Lead - Supprimer un lead

## Description
Supprime un lead existant.

## Endpoint
```
DELETE /agent/lead/{agentConversationId}
```

## Paramètres

### Path
- `agentConversationId`: string (requis) - ID de la conversation d'agent associée au lead

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
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead/conv-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Le lead doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- La conversation d'agent associée ne sera pas supprimée 