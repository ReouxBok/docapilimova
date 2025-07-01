# LIMOVA Instagram - Récupérer les informations utilisateur

## Description
Récupère les informations de l'utilisateur Instagram.

## Endpoint
```
GET /instagram/get-user-info
```

## Paramètres

### Query
- `accessToken`: string (requis) - Token d'accès Instagram

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "username": "string",
  "account_type": "string",
  "media_count": "number"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/instagram/get-user-info?accessToken=your-access-token" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Le token d'accès doit être valide et avoir les permissions nécessaires
- Retourne les informations de base du compte Instagram 