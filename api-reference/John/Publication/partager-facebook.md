🧠 Agent concerné : John
# LIMOVA Facebook - Partager un post

## Description
Partage un post sur Facebook.

## Endpoint
```
POST /facebook/share
```

## Paramètres

### Body (JSON)
```json
{
  "post": "object",
  "pageId": "string"
}
```

#### Champs requis
- `post`: object - Objet contenant les informations du post à partager
- `pageId`: string - ID de la page Facebook sur laquelle partager

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "message": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/facebook/share" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "post": {
      "message": "Mon post Facebook",
      "link": "https://example.com"
    },
    "pageId": "page-id-123"
  }'
```

## Notes
- Le post sera partagé sur la page Facebook spécifiée
- Assurez-vous que les tokens d'accès sont valides pour cette page 