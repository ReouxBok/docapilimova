# Agent Connector Snippet - Récupérer un snippet par agent

## Description
Récupère un snippet spécifique associé à un agent.

## Endpoint
```
GET /agent/connector/snipet/agent/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'agent

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "name": "string",
  "description": "string",
  "content": "string",
  "clientOrgId": "string",
  "createdAt": "string",
  "updatedAt": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snipet/agent/agent-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Si aucun snippet n'est associé à l'agent, une erreur 404 sera retournée 