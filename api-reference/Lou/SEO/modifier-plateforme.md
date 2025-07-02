🧠 Agent concerné : Lou
# LIMOVA SEO - Mettre à jour une plateforme

## Description
Met à jour une plateforme existante.

## Endpoint
```
PUT /seo/updatePlatform
```

## Paramètres

### Query
- `platformId`: string (requis) - ID de la plateforme à mettre à jour

### Body (JSON)
```json
{
  "name": "string",
  "type": "string",
  "config": "object"
}
```

#### Champs optionnels
- `name`: string - Nom de la plateforme
- `type`: string - Type de plateforme
- `config`: object - Configuration de la plateforme

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "name": "string",
  "type": "string",
  "config": "object",
  "clientOrgId": "string",
  "invalidConfig": "boolean"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/updatePlatform?platformId=platform-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "name": "Mon Site WordPress Mise à jour",
    "config": {
      "domain": "nouveausite.com",
      "username": "admin",
      "applicationPassword": "newpassword123"
    }
  }'
```

## Notes
- La plateforme doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Seuls les champs fournis dans le body seront mis à jour 