🧠 Agent concerné : Mickael
# Agent Connector Snippet - Mettre à jour un snippet

## Description
Met à jour un snippet existant.

## Endpoint
```
PUT /agent/connector/snippet/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID du snippet à mettre à jour

### Body (JSON)
```json
{
  "name": "string",
  "description": "string",
  "content": "string"
}
```

#### Champs optionnels
- `name`: string - Nom du snippet
- `description`: string - Description du snippet
- `content`: string - Contenu du snippet

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "name": "string",
  "description": "string",
  "content": "string",
  "clientOrgId": "string",
  "createdAt": "string",
  "updatedAt": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snippet/snippet-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "name": "Accueil Premium",
    "content": "Bonjour ! Bienvenue dans notre service premium. Comment puis-je vous aider ?"
  }'
```

## Notes
- Le snippet doit appartenir à l'organisation cliente de l'utilisateur authentifié
- Seuls les champs fournis dans le body seront mis à jour
- Les champs non fournis conserveront leurs valeurs actuelles 