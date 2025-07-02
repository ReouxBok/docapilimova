🧠 Agent concerné : Mickael
# Agent Conversation - Mettre à jour une conversation

## Description
Met à jour une conversation existante.

## Endpoint
```
PUT /agent/conversation/conversation/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de la conversation à mettre à jour

### Body (JSON)
```json
{
  "updatedAt": "string"
}
```

#### Champs requis
- `updatedAt`: string (format date-time) - Date de dernière mise à jour

## Réponse

### Succès (200)
```json
{
  "message": "Successfully updated conversation"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/conversation/conversation/conv-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "updatedAt": "2024-01-15T10:30:00.000Z"
  }'
```

## Notes
- La conversation doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Cette route est principalement utilisée pour marquer une conversation comme mise à jour 