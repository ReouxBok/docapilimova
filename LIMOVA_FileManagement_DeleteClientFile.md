# Supprimer un fichier client

## Description
Supprime un fichier de l'organisation client.

## Endpoint
```
DELETE /file/deleteClientFile/{id}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `id`: string (requis) - ID du fichier à supprimer

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "name": "string",
  "clientOrgType": "string",
  "users": [
    {
      "id": "string",
      "role": "string",
      "lastName": "string",
      "firstName": "string",
      "birthday": "string"
    }
  ],
  "clientOrgActivitySectors": ["string"],
  "birthday": "string",
  "onboarded": "boolean",
  "contacts": [
    {
      "id": "string",
      "type": "string",
      "default": "boolean",
      "street": "string",
      "streetNumber": "string",
      "city": "string",
      "zip": "string",
      "country": "string",
      "value": "string",
      "isActif": "boolean",
      "prefix": "string",
      "optin": [
        {
          "optinDate": "string",
          "optoutDate": "string"
        }
      ]
    }
  ]
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé au fichier |
| 404 | Fichier non trouvé |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Fichier supprimé avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Fichier non trouvé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 1 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/file/deleteClientFile/file-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Le fichier doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- Le fichier sera définitivement supprimé du stockage
- Seuls les utilisateurs autorisés peuvent supprimer des fichiers
- La réponse contient les informations mises à jour de l'organisation cliente 