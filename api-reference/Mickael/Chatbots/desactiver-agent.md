🧠 Agent concerné : Mickael
# Agent - Désactiver un agent

## Description
Désactive un agent existant.

## Endpoint
```
PUT /agent/desactivate/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'agent à désactiver

## Réponse

### Succès (200)
```json
{
  "message": "Successfully desactivated agent"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/desactivate/agent-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Un agent désactivé ne peut plus être utilisé dans les conversations
- L'agent peut être réactivé en utilisant la route de mise à jour
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié 