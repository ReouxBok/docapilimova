🧠 Agent concerné : Mickael
# Agent Lead - Créer un lead

## Description
Crée un nouveau lead à partir d'une conversation d'agent.

## Endpoint
```
POST /agent/lead/{conversationId}
```

## Paramètres

### Path
- `conversationId`: string (requis) - ID de la conversation d'agent

### Body (JSON)
```json
{
  "firstName": "string",
  "lastName": "string",
  "email": "string",
  "phone": "string"
}
```

#### Champs optionnels
- `firstName`: string - Prénom du lead
- `lastName`: string - Nom de famille du lead
- `email`: string - Email du lead
- `phone`: string - Téléphone du lead

## Réponse

### Succès (201)
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
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead/conv-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "firstName": "Jean",
    "lastName": "Dupont",
    "email": "jean.dupont@email.com",
    "phone": "+33123456789"
  }'
```

## Notes
- La conversation doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Le statut par défaut du lead sera "not-contacted"
- Un seul lead peut être créé par conversation 