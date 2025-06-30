# Récupérer l'historique des présentations

## Description
Récupère l'historique des présentations générées par l'utilisateur.

## Endpoint
```
GET /slides
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
    "title": "string",
    "topic": "string",
    "numberOfSlides": "number",
    "style": "string",
    "language": "string",
    "status": "string",
    "downloadUrl": "string",
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
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/slides" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Retourne toutes les présentations de l'utilisateur authentifié
- Les présentations sont triées par date de création (plus récentes en premier)
- Le statut peut être : "processing", "completed", "failed"
- Seules les présentations terminées contiennent une URL de téléchargement
- L'historique est limité aux 100 dernières présentations
- Les présentations échouées sont incluses dans l'historique 