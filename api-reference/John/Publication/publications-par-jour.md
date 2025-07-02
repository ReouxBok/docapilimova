🧠 Agent concerné : John
# LIMOVA Social Post - Récupérer les jobs par jour

## Description
Récupère tous les jobs de posts sociaux pour l'utilisateur actuel par jour.

## Endpoint
```
GET /socialPost/getJobsByDay
```

## Paramètres

### Query
- `date`: string (requis) - La date pour laquelle récupérer les jobs de posts sociaux

## Réponse

### Succès (200)
```json
[
  {
    "caption": "string",
    "date": "string",
    "media_type": "string",
    "media_url": ["string"],
    "platforms": ["string"],
    "post_id": "string",
    "thumb_url": "string",
    "status": "string",
    "pageId": "string"
  }
]
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/socialPost/getJobsByDay?date=2024-01-15" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne tous les jobs de posts sociaux pour la date spécifiée
- La date doit être au format YYYY-MM-DD 