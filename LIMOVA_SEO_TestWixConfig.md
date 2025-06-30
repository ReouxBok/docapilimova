# LIMOVA SEO - Tester une configuration Wix

## Description
Teste la validité d'une configuration Wix.

## Endpoint
```
POST /seo/testWixConfig
```

## Paramètres

### Body (JSON)
```json
{
  "domain": "string",
  "username": "string",
  "applicationPassword": "string"
}
```

#### Champs requis
- `domain`: string - Domaine du site Wix
- `username`: string - Nom d'utilisateur
- `applicationPassword`: string - Mot de passe d'application

## Réponse

### Succès (200)
```json
{
  "success": "boolean",
  "message": "string",
  "details": "object",
  "response": "object"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/testWixConfig" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "domain": "monsite.wixsite.com",
    "username": "admin@monsite.com",
    "applicationPassword": "password123"
  }'
```

## Notes
- Teste la connexion à l'API Wix avec les identifiants fournis
- Retourne le succès ou l'échec de la connexion
- Les détails contiennent des informations supplémentaires sur le test 