🧠 Agent concerné : Lou
# LIMOVA SEO - Récupérer un article par ID

## Description
Récupère un article spécifique par son ID.

## Endpoint
```
GET /seo/getArticleById
```

## Paramètres

### Query
- `articleId`: string (requis) - ID de l'article à récupérer

## Réponse

### Succès (200)
```json
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
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/getArticleById?articleId=article-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'article doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Si l'article n'existe pas, une erreur 404 sera retournée 