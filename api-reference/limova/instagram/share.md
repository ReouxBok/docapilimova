# LIMOVA Instagram - Partager un post

## Description
Partage un post sur Instagram.

## Endpoint
```
POST /instagram/share
```

## Paramètres

### Body (JSON)
```json
{
  "post": "object"
}
```

#### Champs requis
- `post`: object - Objet contenant les informations du post à partager

## Réponse

### Succès (200)
```json
{
  "success": "boolean",
  "message": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/instagram/share" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "post": {
      "caption": "Mon post Instagram",
      "media_url": "https://example.com/image.jpg"
    }
  }'
```

## Notes
- Le post sera partagé sur le compte Instagram associé
- Assurez-vous que les tokens d'accès sont valides 