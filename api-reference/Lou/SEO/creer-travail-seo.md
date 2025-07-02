🧠 Agent concerné : Lou
# Créer un job SEO

## Description
Crée un nouveau job SEO avec les paramètres spécifiés.

## Endpoint
```
POST /seo/createSeoJob
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Body (JSON)
```json
{
  "clientOrgId": "string",
  "name": "string",
  "platforms": [
    {
      "type": "string",
      "config": "object"
    }
  ],
  "keywords": ["string"],
  "language": "string",
  "numberOfArticles": "number",
  "length": "number",
  "imagesPerArticle": "number",
  "recurrence": {
    "type": "string",
    "dayOfWeek": "string",
    "dayOfMonth": "string",
    "hourOfDay": "string"
  },
  "prompt": "string"
}
```

#### Champs requis
- `clientOrgId`: string - ID de l'organisation cliente
- `name`: string - Nom du job SEO
- `platforms`: array - Liste des plateformes configurées
- `keywords`: array - Mots-clés pour la génération d'articles
- `language`: string - Langue des articles (ex: "en", "fr")
- `numberOfArticles`: number - Nombre d'articles à générer
- `length`: number - Longueur de chaque article
- `imagesPerArticle`: number - Nombre d'images par article
- `recurrence`: object - Configuration de la récurrence
- `prompt`: string - Prompt pour la génération d'articles

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "clientOrgId": "string",
  "name": "string",
  "platforms": [
    {
      "id": "string",
      "name": "string",
      "type": "string",
      "config": "object",
      "clientOrgId": "string",
      "invalidConfig": "boolean"
    }
  ],
  "keywords": ["string"],
  "language": "string",
  "numberOfArticles": "number",
  "length": "number",
  "imagesPerArticle": "number",
  "recurrence": {
    "type": "string",
    "dayOfWeek": "string",
    "dayOfMonth": "string",
    "hourOfDay": "string"
  },
  "prompt": "string",
  "status": "string",
  "createdAt": "string",
  "updatedAt": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Paramètres manquants ou invalides |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à l'organisation |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Job SEO créé avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/createSeoJob" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "clientOrgId": "org-id-123",
    "name": "Mon Job SEO",
    "platforms": [
      {
        "type": "wordpress",
        "config": {
          "domain": "monsite.com",
          "username": "admin",
          "applicationPassword": "password123"
        }
      }
    ],
    "keywords": ["intelligence artificielle", "machine learning"],
    "language": "fr",
    "numberOfArticles": 5,
    "length": 1200,
    "imagesPerArticle": 2,
    "recurrence": {
      "type": "weekly",
      "dayOfWeek": "monday",
      "hourOfDay": "09:00"
    },
    "prompt": "Écris un article SEO optimisé sur le sujet suivant..."
  }'
```

## Notes complémentaires
- Le job SEO sera associé à l'organisation cliente de l'utilisateur authentifié
- Les plateformes doivent être préalablement configurées et validées
- La récurrence peut être : "daily", "weekly", "monthly", ou "manual"
- Les articles seront générés automatiquement selon la récurrence définie
- Le statut initial du job sera "pending" 