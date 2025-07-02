🧠 Agent concerné : John
# LIMOVA Social Post - Supprimer les tokens

## Description
Supprime les tokens d'une plateforme de posts sociaux.

## Endpoint
```
DELETE /socialPost/deleteTokens
```

## Paramètres

### Query
- `platform`: string (requis) - La plateforme pour laquelle supprimer les tokens

## Réponse

### Succès (200)
```json
{
  "message": "Tokens deleted successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/socialPost/deleteTokens?platform=facebook" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Supprime définitivement les tokens d'accès pour la plateforme spécifiée
- L'utilisateur devra se reconnecter pour utiliser cette plateforme 