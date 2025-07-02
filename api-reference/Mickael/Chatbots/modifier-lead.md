🧠 Agent concerné : Mickael
# Agent Lead - Mettre à jour un lead

## Description
Met à jour un lead existant.

## Endpoint
```
PUT /agent/lead/{agentConversationId}
```

## Paramètres

### Path
- `agentConversationId`: string (requis) - ID de la conversation d'agent associée au lead

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
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead/conv-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "firstName": "Jean-Pierre",
    "email": "jeanpierre.dupont@email.com"
  }'
```

## Notes
- Le lead doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Seuls les champs fournis dans le body seront mis à jour
- Les champs non fournis conserveront leurs valeurs actuelles 