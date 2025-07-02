🧠 Agent concerné : Mickael
# Agent Connector WhatsApp - Récupérer le premier message

## Description
Récupère le premier message WhatsApp configuré pour un agent.

## Endpoint
```
GET /agent/connector/whatsapp/get-whatsapp-first-message/{agent_id}
```

## Paramètres

### Path
- `agent_id`: string (requis) - ID de l'agent

## Réponse

### Succès (200)
```json
{
  "first_message": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/whatsapp/get-whatsapp-first-message/agent-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Si aucun premier message n'est configuré, une chaîne vide sera retournée 