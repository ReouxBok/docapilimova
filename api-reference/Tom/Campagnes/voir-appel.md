🧠 Agent concerné : Tom
# Robot Appel - Récupérer un appel par ID

## Description
Récupère les détails d'un appel robotisé spécifique par son ID.

## Endpoint
```
GET /robotAppel/call/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'appel

## Réponse

### Succès (200)
```json
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
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call/call-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'appel doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Si l'appel n'existe pas, une erreur 404 sera retournée 