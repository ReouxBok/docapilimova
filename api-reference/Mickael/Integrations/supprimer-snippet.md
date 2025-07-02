🧠 Agent concerné : Mickael
# Agent Connector Snippet - Supprimer un snippet

## Description
Supprime un snippet existant.

## Endpoint
```
DELETE /agent/connector/snippet/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID du snippet à supprimer

## Réponse

### Succès (200)
```json
{
  "message": "Snippet deleted successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snippet/snippet-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Le snippet doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- Les agents qui utilisaient ce snippet devront être mis à jour 