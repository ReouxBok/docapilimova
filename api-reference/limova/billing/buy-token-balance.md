# Acheter des tokens

## Description
Achète un solde de tokens pour l'utilisateur authentifié.

## Endpoint
```
POST /billing-token/buyTokenBalance
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Body (JSON)
```json
{
  "amount": "number"
}
```

#### Champs requis
- `amount`: number - Nombre de tokens à acheter (minimum: 1)

## Réponse

### Succès (200)
```json
{
  "mainTokenCount": "number",
  "extraTokenCount": "number",
  "totalTokenCount": "number",
  "transactionId": "string",
  "amount": "number",
  "price": "number",
  "currency": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Montant invalide ou insuffisant |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 402 | Paiement requis |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Tokens achetés avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 402 | Paiement requis |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 1 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing-token/buyTokenBalance" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "amount": 1000
  }'
```

## Notes complémentaires
- Le montant doit être positif et supérieur ou égal à 1
- Le paiement sera effectué via la méthode de paiement par défaut
- Les tokens seront immédiatement disponibles après l'achat
- Un ID de transaction unique sera généré
- Le prix dépend du nombre de tokens achetés (tarification par paliers)
- Si le solde est insuffisant, une erreur 402 sera retournée 