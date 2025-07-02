🧠 Agent concerné : Charly
# Télécharger une transcription

## Description
Télécharge une transcription générée au format texte.

## Endpoint
```
GET /speech-to-text/download/{transcriptionGenId}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `transcriptionGenId`: string (requis) - ID de la transcription à télécharger

## Réponse

### Succès (200)
```
Contenu du fichier texte de la transcription
```

**Headers de réponse :**
- `Content-Type: text/plain`
- `Content-Disposition: attachment; filename="transcription.txt"`

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
| 200 | Transcription téléchargée avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Transcription non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/speech-to-text/download/trans-123456" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -o transcription.txt
```

## Notes complémentaires
- Seules les transcriptions appartenant à l'utilisateur authentifié sont accessibles
- Seules les transcriptions terminées peuvent être téléchargées
- Le fichier est téléchargé au format texte (.txt)
- Le nom du fichier inclut l'ID de la transcription
- La réponse est un flux de données binaires
- Utilisez l'option `-o` avec curl pour sauvegarder le fichier 