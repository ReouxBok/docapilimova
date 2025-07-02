🧠 Agent concerné : Mickael
# Agent - Supprimer un agent

## Description
Supprime un agent existant.

## Endpoint
```
DELETE /agent/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'agent à supprimer

## Réponse

### Succès (200)
```json
{
  "message": "Successfully deleted agent"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/agent-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- Toutes les conversations associées à cet agent seront également supprimées
- Les leads associés à cet agent seront également supprimés 