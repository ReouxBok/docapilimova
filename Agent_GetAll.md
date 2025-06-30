# Agent - Récupérer tous les agents

## Description
Récupère la liste de tous les agents disponibles.

## Endpoint
```
GET /agent
```

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
{
  "agents": [
    {
      "id": "string",
      "name": "string",
      "role": "string",
      "prompt": "string",
      "active": "boolean",
      "personality": "string",
      "freeText": "string",
      "transferWords": ["string"],
      "maxNotUnderstood": "number",
      "triggerUserAskHuman": "boolean",
      "transferMessage": "string"
    }
  ]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Cette route retourne tous les agents configurés pour l'organisation cliente
- Les agents inactifs peuvent être inclus dans la réponse
- Utilisez cette route pour afficher la liste des agents disponibles dans l'interface utilisateur 