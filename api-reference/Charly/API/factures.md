🧠 Agent concerné : Charly
# Récupérer les factures

## Description
Récupère les factures du client actuel.

## Endpoint
```
GET /billing/stripe/getBills
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
    "amount": "number",
    "currency": "string",
    "status": "string",
    "createdAt": "string",
    "dueDate": "string",
    "description": "string"
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
| 200 | Factures récupérées avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing/stripe/getBills" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Retourne toutes les factures associées à l'organisation cliente de l'utilisateur authentifié
- Les factures sont généralement triées par date de création (plus récentes en premier)
- Seules les factures visibles pour l'utilisateur sont retournées 