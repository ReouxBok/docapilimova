🧠 Agent concerné : Mickael
# Bot - Définir l'agent d'un bot

## Description
Définit l'agent associé à un bot spécifique.

## Endpoint
```
PUT /bot/set-agent/{botId}
```

## Paramètres

### Path
- `botId`: string (requis) - ID du bot

### Body (JSON)
```json
{
  "botId": "string"
}
```

#### Champs requis
- `botId`: string - ID de l'agent à associer

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "systemPrompt": "string",
  "gender": "string",
  "title": "string",
  "botName": "string",
  "logo": "string",
  "target": "string",
  "nameColor": "string",
  "gradColorside": "string",
  "gradColorChat": "string",
  "tiers": "string",
  "headLogo": "string",
  "status": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/bot/set-agent/bot-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "botId": "agent-id-456"
  }'
```

## Notes
- Le bot doit appartenir à l'organisation cliente de l'utilisateur authentifié
- L'agent doit également appartenir à la même organisation 