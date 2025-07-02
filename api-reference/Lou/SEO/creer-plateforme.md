🧠 Agent concerné : Lou
# LIMOVA SEO - Créer une plateforme

## Description
Crée une nouvelle plateforme pour les jobs SEO.

## Endpoint
```
POST /seo/createPlatform
```

## Paramètres

### Body (JSON)
```json
{
  "name": "string",
  "type": "string",
  "config": "object"
}
```

#### Champs requis
- `name`: string - Nom de la plateforme
- `type`: string - Type de plateforme (wordpress, wix, etc.)
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
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/createPlatform" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "name": "Mon Site WordPress",
    "type": "wordpress",
    "config": {
      "domain": "monsite.com",
      "username": "admin",
      "applicationPassword": "password123"
    }
  }'
```

## Notes
- La plateforme sera associée à l'organisation cliente de l'utilisateur authentifié
- Le champ invalidConfig indique si la configuration est valide 