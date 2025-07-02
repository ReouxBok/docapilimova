🧠 Agent concerné : Charly
# Récupérer tous les utilisateurs actifs

## Description
Récupère tous les utilisateurs actifs de l'organisation.

## Endpoint
```
GET /billing/stripe/getAllActivesUsers
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
  "message": "The active users have been successfully retrieved.",
  "users": [
    {
      "id": "string",
      "email": "string",
      "firstName": "string",
      "lastName": "string",
      "role": "string",
      "isActive": "boolean",
      "lastLoginAt": "string"
    }
  ]
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
| 200 | Utilisateurs actifs récupérés avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/billing/stripe/getAllActivesUsers" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Retourne uniquement les utilisateurs actifs de l'organisation cliente
- Les utilisateurs inactifs ou supprimés ne sont pas inclus
- Les informations sensibles (mots de passe) ne sont jamais retournées
- Seuls les administrateurs peuvent accéder à cette route 