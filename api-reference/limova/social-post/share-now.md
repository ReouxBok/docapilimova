# LIMOVA Social Post - Partager maintenant

## Description
Partage un post social immédiatement.

## Endpoint
```
POST /socialPost/shareNow
```

## Paramètres

### Body (JSON)
```json
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
```

#### Champs requis
- `caption`: string - Légende du post
- `date`: string - Date du post
- `media_type`: string - Type de média
- `media_url`: array - URLs des médias
- `platforms`: array - Plateformes sur lesquelles poster
- `post_id`: string - ID du post
- `thumb_url`: string - URL de la miniature
- `status`: string - Statut du post
- `pageId`: string - ID de la page

## Réponse

### Succès (201)
```json
{
  "message": "Post shared successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/socialPost/shareNow" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "caption": "Mon post de test",
    "date": "2024-01-15T10:00:00Z",
    "media_type": "single_image",
    "media_url": ["https://example.com/image.jpg"],
    "platforms": ["facebook"],
    "post_id": "post-123",
    "thumb_url": "https://example.com/thumb.jpg",
    "status": "scheduled",
    "pageId": "page-123"
  }'
```

## Notes
- Le post sera partagé immédiatement sur toutes les plateformes spécifiées
- Assurez-vous que les tokens sont valides pour toutes les plateformes 