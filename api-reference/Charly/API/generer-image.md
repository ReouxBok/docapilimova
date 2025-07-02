🧠 Agent concerné : Charly
# Récupérer une génération par ID

## Description
Récupère une génération d'image par son ID.

## Endpoint
```
GET /images/generation/{generationId}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `generationId`: string (requis) - ID de la génération

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "prompt": "string",
  "negativePrompt": "string",
  "ratio": "string",
  "presetStyle": "string",
  "status": "string",
  "imageUrl": "string",
  "createdAt": "string",
  "completedAt": "string",
  "userId": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à la génération |
| 404 | Génération non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Génération récupérée avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Génération non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 10 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/images/generation/gen-123456" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Seules les générations appartenant à l'utilisateur authentifié sont accessibles
- Le statut peut être : "pending", "processing", "completed", "failed"
- L'URL de l'image n'est disponible que si le statut est "completed"
- Les générations échouées ne contiennent pas d'URL d'image
- L'historique des générations est conservé pour référence 