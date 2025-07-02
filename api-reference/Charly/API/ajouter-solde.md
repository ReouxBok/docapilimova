🧠 Agent concerné : Charly
# Ajouter de l'argent au solde

## Description
Ajoute de l'argent au solde d'un client.

## Endpoint
```
POST /billing/balance/addBalanceMoney
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Body (JSON)
```json
{
  "amount": "number",
  "description": "string",
  "customerId": "string"
}
```

#### Champs requis
- `amount`: number - Montant à ajouter au solde (minimum: 1)
- `description`: string - Description de la transaction
- `customerId`: string - ID du client

## Réponse

### Succès (200)
```json
{
  "available": "number",
  "pending": "number",
  "currency": "string",
  "lastUpdated": "string",
  "transactionId": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Montant invalide ou paramètres manquants |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 404 | Client non trouvé |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Solde mis à jour avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Client non trouvé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 1 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing/balance/addBalanceMoney" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "amount": 100,
    "description": "Crédit pour usage",
    "customerId": "cus_123456789"
  }'
```

## Notes complémentaires
- Le montant doit être positif et supérieur ou égal à 1
- La transaction sera immédiatement disponible sur le solde
- Un ID de transaction unique sera généré
- Seuls les administrateurs peuvent ajouter de l'argent au solde
- La description aide à tracer l'origine du crédit 