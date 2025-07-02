🧠 Agent concerné : Charly
# Récupérer une présentation par ID

## Description
Récupère une présentation spécifique par son ID.

## Endpoint
```
GET /slides/{id}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `id`: string (requis) - ID de la présentation

## Réponse

### Succès (200)
```json
{
  "innerId": "string",
  "title": "string",
  "topic": "string",
  "numberOfSlides": "number",
  "style": "string",
  "language": "string",
  "status": "string",
  "downloadUrl": "string",
  "slidesContent": [
    {
      "slideNumber": "number",
      "title": "string",
      "content": "string",
      "images": ["string"]
    }
  ],
  "createdAt": "string",
  "completedAt": "string",
  "processingTime": "number"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à la présentation |
| 404 | Présentation non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Présentation récupérée avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Présentation non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/slides/slides-123456" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Seules les présentations appartenant à l'utilisateur authentifié sont accessibles
- Le statut peut être : "processing", "completed", "failed"
- Seules les présentations terminées contiennent le contenu détaillé
- L'URL de téléchargement n'est disponible que si le statut est "completed"
- Le contenu des diapositives inclut le texte et les images générées
- Les présentations en cours de traitement ne contiennent que les métadonnées 