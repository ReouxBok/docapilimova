# Rechercher un utilisateur par email

## Description
Recherche un utilisateur par son adresse email.

## Endpoint
```
GET /users/search/{email}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `email`: string (requis) - Adresse email à rechercher

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "role": "string",
  "lastName": "string",
  "firstName": "string",
  "clientsOrg": {
    "id": "string",
    "name": "string"
  },
  "mails": [
    {
      "id": "string",
      "value": "string",
      "isActif": "boolean"
    }
  ],
  "addresses": ["string"],
  "phones": ["string"],
  "userAlerts": [
    {
      "alert": "object",
      "id": "object",
      "userAlert": [
        {
          "user": "object",
          "userAlerts": "object"
        }
      ]
    }
  ]
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Format d'email invalide |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 404 | Utilisateur non trouvé |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Utilisateur trouvé avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Utilisateur non trouvé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 0.5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/users/search/mailittryit@mail.comm" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- L'email doit être au format valide
- Seuls les utilisateurs autorisés peuvent rechercher d'autres utilisateurs
- Les informations sensibles (mots de passe) ne sont jamais retournées
- La recherche est sensible à la casse
- Si l'utilisateur n'existe pas, une erreur 404 sera retournée 