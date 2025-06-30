# Récupérer l'historique des images

## Description
Récupère l'historique des images générées par l'utilisateur.

## Endpoint
```
GET /images/history
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
    "prompt": "string",
    "negativePrompt": "string",
    "ratio": "string",
    "presetStyle": "string",
    "status": "string",
    "imageUrl": "string",
    "createdAt": "string",
    "completedAt": "string"
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
| 200 | Historique récupéré avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/images/history" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Retourne toutes les générations d'images de l'utilisateur authentifié
- Les générations sont triées par date de création (plus récentes en premier)
- Seules les générations terminées contiennent une URL d'image
- L'historique est limité aux 100 dernières générations
- Les générations échouées sont incluses dans l'historique 