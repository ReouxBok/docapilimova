# Récupérer toutes les transcriptions

## Description
Récupère toutes les transcriptions de l'utilisateur authentifié.

## Endpoint
```
GET /speech-to-text
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
    "innerId": "string",
    "originalFileName": "string",
    "status": "string",
    "language": "string",
    "transcription": "string",
    "createdAt": "string",
    "completedAt": "string",
    "duration": "number"
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
| 200 | Transcriptions récupérées avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/speech-to-text" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Retourne toutes les transcriptions de l'utilisateur authentifié
- Les transcriptions sont triées par date de création (plus récentes en premier)
- Le statut peut être : "processing", "completed", "failed"
- Seules les transcriptions terminées contiennent le texte transcrit
- L'historique est limité aux 100 dernières transcriptions
- Les transcriptions échouées sont incluses dans la liste 