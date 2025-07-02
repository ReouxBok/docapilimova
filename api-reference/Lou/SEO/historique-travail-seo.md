🧠 Agent concerné : Lou
# LIMOVA SEO - Récupérer l'historique des jobs

## Description
Récupère l'historique de tous les jobs SEO.

## Endpoint
```
GET /seo/job/history
```

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
{
  "jobs": [
    {
      "id": "string",
      "name": "string",
      "description": "string",
      "status": "string",
      "clientOrgId": "string",
      "createdAt": "string",
      "updatedAt": "string",
      "config": {
        "targetUrl": "string",
        "keywords": ["string"],
        "language": "string",
        "tone": "string",
        "length": "string"
      }
    }
  ]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/job/history" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne tous les jobs SEO de l'organisation cliente de l'utilisateur authentifié
- Les jobs sont généralement triés par date de création (plus récents en premier)
- Inclut tous les statuts: pending, running, completed, failed 