🧠 Agent concerné : Tom
# Robot Appel - Démarrer un appel

## Description
Démarre un appel robotisé existant.

## Endpoint
```
POST /robotAppel/call/{id}/start
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'appel à démarrer

## Réponse

### Succès (200)
```json
{
  "message": "Call started successfully",
  "callId": "string"
}
```

## Coût
**Cost Fix: 10 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call/call-id-123/start" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'appel doit appartenir à l'organisation cliente de l'utilisateur authentifié
- L'appel doit être en statut "pending" pour pouvoir être démarré
- Le statut de l'appel passera à "ringing" puis "answered" ou "failed" 