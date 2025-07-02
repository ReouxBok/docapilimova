🧠 Agent concerné : Lou
# LIMOVA SEO - Tester une configuration WordPress

## Description
Teste la validité d'une configuration WordPress.

## Endpoint
```
POST /seo/testWordpressConfig
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
- `domain`: string - Domaine du site WordPress
- `username`: string - Nom d'utilisateur
- `applicationPassword`: string - Mot de passe d'application

## Réponse

### Succès (200)
```json
{
  "success": "boolean",
  "message": "string",
  "details": "object",
  "code": "number",
  "response": "object"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/testWordpressConfig" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "domain": "monsite.com",
    "username": "admin",
    "applicationPassword": "password123"
  }'
```

## Notes
- Teste la connexion à l'API WordPress avec les identifiants fournis
- Retourne le succès ou l'échec de la connexion
- Le code HTTP de la réponse est inclus dans la réponse
- Les détails contiennent des informations supplémentaires sur le test 