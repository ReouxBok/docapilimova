🧠 Agent concerné : Tom
# Robot Appel - Arrêter un appel

## Description
Arrête un appel robotisé en cours.

## Endpoint
```
POST /robotAppel/call/{id}/stop
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'appel à arrêter

## Réponse

### Succès (200)
```json
{
  "message": "Call stopped successfully",
  "callId": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call/call-id-123/stop" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'appel doit appartenir à l'organisation cliente de l'utilisateur authentifié
- L'appel doit être en cours (statut "ringing" ou "answered") pour pouvoir être arrêté
- Le statut de l'appel passera à "completed" ou "failed" 