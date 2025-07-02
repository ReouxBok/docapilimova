🧠 Agent concerné : John
# LIMOVA Social Post - Rafraîchir les tokens

## Description
Rafraîchit les tokens d'une plateforme de posts sociaux.

## Endpoint
```
POST /socialPost/refreshTokens
```

## Paramètres

### Body (JSON)
```json
{
  "platform": "string"
}
```

#### Champs requis
- `platform`: string - La plateforme pour laquelle rafraîchir les tokens

## Réponse

### Succès (201)
```json
{
  "message": "Tokens refreshed successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/socialPost/refreshTokens" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "platform": "facebook"
  }'
```

## Notes
- Rafraîchit les tokens d'accès pour la plateforme spécifiée
- Les tokens expirés seront automatiquement renouvelés 