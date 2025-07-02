🧠 Agent concerné : Tom
# Robot Appel - Créer un appel

## Description
Crée un nouvel appel robotisé.

## Endpoint
```
POST /robotAppel/call
```

## Paramètres

### Body (JSON)
```json
{
  "phoneNumber": "string",
  "script": "string",
  "priority": "number"
}
```

#### Champs requis
- `phoneNumber`: string - Numéro de téléphone à appeler

#### Champs optionnels
- `script`: string - Script de l'appel
- `priority`: number - Priorité de l'appel (1-10)

## Réponse

### Succès (201)
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
**Cost Fix: 10 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/robotAppel/call" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "phoneNumber": "+33123456789",
    "script": "Bonjour, je vous appelle pour...",
    "priority": 5
  }'
```

## Notes
- L'appel sera associé à l'organisation cliente de l'utilisateur authentifié
- Le statut initial sera "pending"
- L'appel sera programmé selon la priorité définie 