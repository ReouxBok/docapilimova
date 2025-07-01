# LIMOVA SEO - Supprimer un article

## Description
Supprime un article spécifique.

## Endpoint
```
DELETE /seo/deleteArticle
```

## Paramètres

### Query
- `articleId`: string (requis) - ID de l'article à supprimer

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
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/deleteArticle?articleId=article-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- L'article doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- L'article sera également supprimé de la plateforme associée si possible 