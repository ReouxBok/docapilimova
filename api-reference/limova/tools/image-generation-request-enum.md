# Récupérer les énumérations de requête

## Description
Récupère les énumérations disponibles pour les requêtes d'images.

## Endpoint
```
GET /images/requestEnum
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
{
  "ratio": {
    "SQUARE": "1:1",
    "PORTRAIT": "3:4",
    "LANDSCAPE": "4:3",
    "WIDE": "16:9"
  },
  "presetStyle": {
    "REALISTIC": "realistic",
    "ARTISTIC": "artistic",
    "CARTOON": "cartoon",
    "ABSTRACT": "abstract"
  }
}
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
| 200 | Énumérations récupérées avec succès |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/images/requestEnum" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- Les ratios définissent les proportions des images générées
- Les styles prédéfinis permettent de personnaliser l'apparence des images
- Ces énumérations sont utilisées pour valider les paramètres de génération d'images
- Les valeurs retournées peuvent être utilisées directement dans les requêtes de génération 