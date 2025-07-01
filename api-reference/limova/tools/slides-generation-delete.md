# Supprimer une présentation

## Description
Supprime une présentation existante.

## Endpoint
```
DELETE /slides/{id}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `id`: string (requis) - ID de la présentation à supprimer

## Réponse

### Succès (200)
```json
{
  "message": "The deleted slides history",
  "deletedId": "string"
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
| 200 | Présentation supprimée avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Présentation non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/slides/slides-123456" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Seules les présentations appartenant à l'utilisateur authentifié peuvent être supprimées
- La suppression est irréversible
- Les fichiers associés (PDF, images) seront également supprimés
- Les présentations en cours de traitement peuvent être supprimées
- L'ID de la présentation supprimée est retourné pour confirmation 