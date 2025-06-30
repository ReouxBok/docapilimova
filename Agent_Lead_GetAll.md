# Agent Lead - Récupérer tous les leads

## Description
Récupère la liste de tous les leads créés à partir des conversations d'agents.

## Endpoint
```
GET /agent/lead
```

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
{
  "leads": [
    {
      "agentConversationId": "string",
      "clientOrgId": "string",
      "firstName": "string",
      "lastName": "string",
      "email": "string",
      "phone": "string",
      "status": "string"
    }
  ]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne tous les leads de l'organisation cliente de l'utilisateur authentifié
- Les leads sont créés à partir des conversations d'agents
- Le statut peut être: not-contacted, not-interested, interested, contacted 