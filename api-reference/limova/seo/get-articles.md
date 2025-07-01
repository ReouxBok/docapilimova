# LIMOVA SEO - Récupérer tous les articles

## Description
Récupère la liste de tous les articles générés.

## Endpoint
```
GET /seo/getArticles
```

## Paramètres
Aucun paramètre requis.

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
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/getArticles" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne tous les articles de l'organisation cliente de l'utilisateur authentifié
- Les articles sont généralement triés par date de création (plus récents en premier) 