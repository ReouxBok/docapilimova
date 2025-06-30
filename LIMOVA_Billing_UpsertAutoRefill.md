# Configurer le rechargement automatique

## Description
Configure le rechargement automatique du solde pour un client.

## Endpoint
```
POST /billing/balance/upsertAutoRefil
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Body (JSON)
```json
{
  "customerId": "string",
  "minBalanceBeforeRefill": "number",
  "refillBalanceUpTo": "number",
  "autoRefillActive": "boolean"
}
```

#### Champs requis
- `customerId`: string - ID du client
- `minBalanceBeforeRefill`: number - Solde minimum avant rechargement
- `refillBalanceUpTo`: number - Solde cible après rechargement
- `autoRefillActive`: boolean - Activer/désactiver le rechargement automatique

## Réponse

### Succès (200)
```json
{
  "available": "number",
  "pending": "number",
  "currency": "string",
  "lastUpdated": "string",
  "autoRefillConfig": {
    "minBalanceBeforeRefill": "number",
    "refillBalanceUpTo": "number",
    "autoRefillActive": "boolean"
  }
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Paramètres invalides ou manquants |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 404 | Client non trouvé |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Configuration mise à jour avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Client non trouvé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 1 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing/balance/upsertAutoRefil" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "customerId": "cus_123456789",
    "minBalanceBeforeRefill": 10,
    "refillBalanceUpTo": 100,
    "autoRefillActive": true
  }'
```

## Notes complémentaires
- Le rechargement automatique se déclenche quand le solde descend en dessous de `minBalanceBeforeRefill`
- Le solde sera rechargé jusqu'à atteindre `refillBalanceUpTo`
- La méthode de paiement par défaut sera utilisée pour le rechargement
- Si `autoRefillActive` est false, le rechargement automatique est désactivé
- Seuls les administrateurs peuvent configurer le rechargement automatique 