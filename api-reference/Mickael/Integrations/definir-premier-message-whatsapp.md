🧠 Agent concerné : Mickael
# Agent Connector WhatsApp - Définir le premier message

## Description
Définit le premier message WhatsApp pour un agent.

## Endpoint
```
PUT /agent/connector/whatsapp/set-whatsapp-first-message
```

## Paramètres

### Body (JSON)
```json
{
  "agent_id": "string",
  "first_message": "string"
}
```

#### Champs requis
- `agent_id`: string - ID de l'agent
- `first_message`: string - Premier message à envoyer

## Réponse

### Succès (200)
```json
{
  "message": "The first message has been set"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/whatsapp/set-whatsapp-first-message" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "agent_id": "agent-id-123",
    "first_message": "Bonjour ! Je suis votre assistant virtuel. Comment puis-je vous aider aujourd'hui ?"
  }'
```

## Notes
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Ce message sera envoyé automatiquement lors de la première interaction WhatsApp
- Le message peut contenir des variables dynamiques qui seront remplacées lors de l'envoi 