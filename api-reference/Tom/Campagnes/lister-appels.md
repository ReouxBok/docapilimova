🧠 Agent concerné : Tom
# Robot Appel - Récupérer tous les appels

## Description
Récupère la liste de tous les appels robotisés.

## Endpoint
```
GET /robotAppel/call
```

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
{
  "calls": [
    {
      "id": "string",
      "phoneNumber": "string",
      "status": "string",
      "duration": "number",
      "startTime": "string",
      "endTime": "string",
      "clientOrgId": "string",
      "createdAt": "string",
      "updatedAt": "string"
    }
  ]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne tous les appels de l'organisation cliente de l'utilisateur authentifié
- Les appels sont généralement triés par date de création (plus récents en premier)
- Le statut peut être: pending, ringing, answered, completed, failed, busy, no-answer 