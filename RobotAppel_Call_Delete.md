# Robot Appel - Supprimer un appel

## Description
Supprime un appel robotisé existant.

## Endpoint
```
DELETE /robotAppel/call/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'appel à supprimer

## Réponse

### Succès (200)
```json
{
  "message": "Call deleted successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call/call-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'appel doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- Si l'appel est en cours, il sera interrompu 