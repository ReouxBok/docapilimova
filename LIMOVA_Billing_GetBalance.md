# Récupérer le solde de facturation

## Description
Récupère le solde de facturation pour un client.

## Endpoint
```
GET /billing/balance/getBalance
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Query (optionnel)
- `clientOrgId`: string - ID de l'organisation client pour récupérer le solde

## Réponse

### Succès (200)
```json
{
  "available": "number",
  "pending": "number",
  "currency": "string",
  "lastUpdated": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 404 | Organisation client non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Solde récupéré avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Organisation non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 1 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing/balance/getBalance?clientOrgId=org-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Si `clientOrgId` n'est pas fourni, le solde de l'organisation de l'utilisateur authentifié sera retourné
- Le solde disponible représente les fonds immédiatement utilisables
- Le solde en attente représente les transactions en cours de traitement
- La devise est généralement en EUR (euros)
- Le solde est mis à jour en temps réel 