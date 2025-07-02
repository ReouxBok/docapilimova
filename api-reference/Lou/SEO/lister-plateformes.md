🧠 Agent concerné : Lou
# LIMOVA SEO - Récupérer toutes les plateformes

## Description
Récupère la liste de toutes les plateformes configurées.

## Endpoint
```
GET /seo/getPlatforms
```

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
[
  {
    "id": "string",
    "name": "string",
    "type": "string",
    "config": "object",
    "clientOrgId": "string",
    "invalidConfig": "boolean"
  }
]
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/getPlatforms" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne toutes les plateformes de l'organisation cliente de l'utilisateur authentifié
- Les plateformes sont généralement triées par date de création 