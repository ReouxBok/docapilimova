# LIMOVA SEO - Récupérer les articles par job SEO

## Description
Récupère tous les articles associés à un job SEO spécifique.

## Endpoint
```
GET /seo/getArticlesBySeoJobId
```

## Paramètres

### Query
- `seoJobId`: string (requis) - ID du job SEO

## Réponse

### Succès (200)
```json
[
  {
    "id": "string",
    "clientOrgId": "string",
    "seoJobId": "string",
    "platform": {
      "id": "string",
      "name": "string",
      "type": "string",
      "config": "object",
      "clientOrgId": "string",
      "invalidConfig": "boolean"
    },
    "title": "string",
    "content": "string",
    "link": "string",
    "postId": "string"
  }
]
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/getArticlesBySeoJobId?seoJobId=job-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Le job SEO doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Retourne tous les articles générés pour ce job SEO 