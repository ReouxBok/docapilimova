🧠 Agent concerné : Mickael
# Agent Lead - Récupérer un lead par ID

## Description
Récupère un lead spécifique par son ID.

## Endpoint
```
GET /agent/lead/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID du lead à récupérer

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
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead/lead-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Le lead doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Si le lead n'existe pas, une erreur 404 sera retournée 