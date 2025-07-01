# LIMOVA SEO - Récupérer un job par ID

## Description
Récupère les détails d'un job SEO spécifique par son ID.

## Endpoint
```
GET /seo/job/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID du job SEO

## Réponse

### Succès (200)
```json
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
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/job/job-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Le job doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Le statut peut être: pending, running, completed, failed
- Les détails complets du job et sa configuration sont retournés 