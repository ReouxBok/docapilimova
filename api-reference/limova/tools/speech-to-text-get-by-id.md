# Récupérer une transcription par ID

## Description
Récupère une transcription spécifique par son ID.

## Endpoint
```
GET /speech-to-text/{id}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `id`: string (requis) - ID de la transcription

## Réponse

### Succès (200)
```json
{
  "innerId": "string",
  "originalFileName": "string",
  "status": "string",
  "language": "string",
  "transcription": "string",
  "createdAt": "string",
  "completedAt": "string",
  "duration": "number",
  "fileSize": "number",
  "confidence": "number"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à la transcription |
| 404 | Transcription non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Transcription récupérée avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Transcription non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/speech-to-text/trans-123456" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Seules les transcriptions appartenant à l'utilisateur authentifié sont accessibles
- Le statut peut être : "processing", "completed", "failed"
- Seules les transcriptions terminées contiennent le texte transcrit
- La confiance indique la précision de la transcription (0-1)
- La durée est en secondes
- La taille du fichier est en octets 