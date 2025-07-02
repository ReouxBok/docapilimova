🧠 Agent concerné : Mickael
# Agent Connector Snippet - Récupérer tous les snippets

## Description
Récupère la liste de tous les snippets disponibles.

## Endpoint
```
GET /agent/connector/snippet
```

## Paramètres
Aucun paramètre requis.

## Réponse

### Succès (200)
```json
{
  "snippets": [
    {
      "id": "string",
      "name": "string",
      "description": "string",
      "content": "string",
      "clientOrgId": "string",
      "createdAt": "string",
      "updatedAt": "string"
    }
  ]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snippet" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne tous les snippets de l'organisation cliente de l'utilisateur authentifié
- Les snippets sont des modèles de messages réutilisables
- Utiles pour standardiser les réponses des agents 