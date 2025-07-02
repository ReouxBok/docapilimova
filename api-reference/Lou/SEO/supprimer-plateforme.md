🧠 Agent concerné : Lou
# LIMOVA SEO - Supprimer une plateforme

## Description
Supprime une plateforme existante.

## Endpoint
```
DELETE /seo/deletePlatform
```

## Paramètres

### Query
- `platformId`: string (requis) - ID de la plateforme à supprimer

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
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/deletePlatform?platformId=platform-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- La plateforme doit appartenir à l'organisation cliente de l'utilisateur authentifié
- La suppression est irréversible
- Les jobs SEO associés à cette plateforme devront être mis à jour 