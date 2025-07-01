# Chat - Récupérer les IDs des conversations

## Description
Récupère tous les IDs des conversations pour un client et un agent spécifiques.

## Endpoint
```
GET /chat/conversationsIds/{clientOrgId}/{agentId}
```

## Paramètres

### Path
- `clientOrgId`: string (requis) - ID de l'organisation cliente
- `agentId`: string (requis) - ID de l'agent

## Réponse

### Succès (200)
```json
[
  {
    "chatId": "string",
    "discussionName": "string"
  }
]
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/chat/conversationsIds/org-id-123/agent-id-456" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'organisation cliente et l'agent doivent appartenir à l'utilisateur authentifié
- Retourne la liste de toutes les conversations pour cette combinaison client/agent 