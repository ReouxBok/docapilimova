🧠 Agent concerné : Tom
# Robot Appel - Mettre à jour un appel

## Description
Met à jour un appel robotisé existant.

## Endpoint
```
PUT /robotAppel/call/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'appel à mettre à jour

### Body (JSON)
```json
{
  "phoneNumber": "string",
  "status": "string",
  "duration": "number",
  "script": "string",
  "priority": "number"
}
```

#### Champs optionnels
- `phoneNumber`: string - Numéro de téléphone
- `status`: string - Statut de l'appel
- `duration`: number - Durée de l'appel en secondes
- `script`: string - Script de l'appel
- `priority`: number - Priorité de l'appel

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
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call/call-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "status": "completed",
    "duration": 120
  }'
```

## Notes
- L'appel doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Seuls les champs fournis dans le body seront mis à jour
- Les champs non fournis conserveront leurs valeurs actuelles 