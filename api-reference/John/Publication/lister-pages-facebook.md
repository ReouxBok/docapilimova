🧠 Agent concerné : John
# LIMOVA Facebook - Récupérer les pages

## Description
Récupère la liste des pages Facebook.

## Endpoint
```
GET /facebook/pages
```

## Paramètres

### Query (optionnel)
- `clientOrgId`: string - ID de l'organisation cliente

## Réponse

### Succès (200)
```json
[
  {
    "id": "string",
    "name": "string",
    "access_token": "string"
  }
]
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/facebook/pages?clientOrgId=org-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne toutes les pages Facebook associées à l'organisation cliente
- Les pages sont généralement triées par nom 