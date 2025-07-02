🧠 Agent concerné : Charly
# Générer une présentation

## Description
Génère une nouvelle présentation basée sur les paramètres fournis.

## Endpoint
```
POST /slides/generate
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Body (JSON)
```json
{
  "title": "string",
  "topic": "string",
  "numberOfSlides": "number",
  "style": "string",
  "language": "string",
  "includeImages": "boolean"
}
```

#### Champs requis
- `title`: string - Titre de la présentation
- `topic`: string - Sujet de la présentation

#### Champs optionnels
- `numberOfSlides`: number - Nombre de diapositives (défaut: 10)
- `style`: string - Style de la présentation (ex: "professional", "creative", "minimal")
- `language`: string - Langue de la présentation (ex: "fr", "en")
- `includeImages`: boolean - Inclure des images (défaut: true)

## Réponse

### Succès (200)
```json
{
  "innerId": "string",
  "status": "string",
  "message": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Paramètres invalides ou manquants |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Génération initiée avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 20 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/slides/generate" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "title": "Introduction à l\'Intelligence Artificielle",
    "topic": "Les bases de l\'IA et du machine learning",
    "numberOfSlides": 15,
    "style": "professional",
    "language": "fr",
    "includeImages": true
  }'
```

## Notes complémentaires
- La génération est traitée de manière asynchrone
- Utilisez l'`innerId` retourné pour récupérer le statut et le résultat
- Le statut initial sera "processing"
- Le nombre de diapositives est limité à 50 maximum
- Les styles disponibles dépendent du template utilisé
- La génération peut prendre plusieurs minutes selon la complexité 