# Mettre à jour une transcription

## Description
Met à jour une transcription existante.

## Endpoint
```
PATCH /speech-to-text/{innerId}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `innerId`: string (requis) - ID interne de la transcription

### Body (JSON)
```json
{
  "transcription": "string",
  "language": "string"
}
```

#### Champs optionnels
- `transcription`: string - Nouveau texte de transcription
- `language`: string - Langue de la transcription

## Réponse

### Succès (200)
```json
{
  "innerId": "string",
  "originalFileName": "string",
  "status": "string",
  "language": "string",
  "transcription": "string",
  "updatedAt": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Données de mise à jour invalides |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à la transcription |
| 404 | Transcription non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Transcription mise à jour avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Transcription non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PATCH "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/speech-to-text/trans-123456" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "transcription": "Nouveau texte de transcription corrigé",
    "language": "fr"
  }'
```

## Notes complémentaires
- Seules les transcriptions appartenant à l'utilisateur authentifié peuvent être modifiées
- Seules les transcriptions terminées peuvent être mises à jour
- La mise à jour conserve l'historique de la transcription originale
- Le champ `updatedAt` indique la date de dernière modification
- Tous les champs sont optionnels, seuls ceux fournis seront mis à jour 