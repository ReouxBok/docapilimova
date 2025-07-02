🧠 Agent concerné : Charly
# Récupérer les méthodes de paiement

## Description
Récupère les méthodes de paiement du client actuel.

## Endpoint
```
GET /billing/stripe/PaymentMethods
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
[
  {
    "id": "string",
    "type": "string",
    "card": {
      "brand": "string",
      "last4": "string",
      "expMonth": "number",
      "expYear": "number"
    },
    "billingDetails": {
      "name": "string",
      "email": "string"
    },
    "isDefault": "boolean"
  }
]
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
| 200 | Méthodes de paiement récupérées avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing/stripe/PaymentMethods" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Retourne toutes les méthodes de paiement associées à l'organisation cliente de l'utilisateur authentifié
- Les cartes de crédit/débit sont les méthodes de paiement les plus courantes
- Le champ `isDefault` indique la méthode de paiement par défaut
- Les informations sensibles (numéro complet de carte) ne sont jamais retournées 