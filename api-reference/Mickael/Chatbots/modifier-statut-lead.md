🧠 Agent concerné : Mickael
# Agent Lead - Mettre à jour le statut

## Description
Met à jour le statut d'un lead existant.

## Endpoint
```
PUT /agent/lead/{agentConversationId}/status
```

## Paramètres

### Path
- `agentConversationId`: string (requis) - ID de la conversation d'agent associée au lead

### Body (JSON)
```json
{
  "status": "string"
}
```

#### Champs requis
- `status`: string - Nouveau statut du lead
  - Valeurs possibles: "not-contacted", "not-interested", "interested", "contacted"

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
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/lead/conv-id-123/status" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "status": "contacted"
  }'
```

## Notes
- Le lead doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Les statuts disponibles permettent de suivre l'évolution du lead dans le processus de vente
- Seul le statut sera mis à jour, les autres informations du lead resteront inchangées 