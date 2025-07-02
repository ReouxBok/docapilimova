🧠 Agent concerné : Charly
# Récupérer le solde de tokens

## Description
Récupère le solde de tokens pour l'utilisateur authentifié.

## Endpoint
```
GET /billing-token/getTokenBalance
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
{
  "mainTokenCount": "number",
  "extraTokenCount": "number",
  "totalTokenCount": "number",
  "refillBalanceActive": "boolean",
  "refillBalanceUpTo": "number",
  "minBalanceBeforeRefill": "number",
  "apiKey": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Solde de tokens récupéré avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 1 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing-token/getTokenBalance" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- `mainTokenCount` représente les tokens principaux disponibles
- `extraTokenCount` représente les tokens supplémentaires (bonus, etc.)
- `totalTokenCount` est la somme des tokens principaux et supplémentaires
- `refillBalanceActive` indique si le rechargement automatique est activé
- `refillBalanceUpTo` et `minBalanceBeforeRefill` concernent le rechargement automatique
- `apiKey` est la clé API associée à l'utilisateur
- Les tokens sont consommés lors de l'utilisation des services de l'API 