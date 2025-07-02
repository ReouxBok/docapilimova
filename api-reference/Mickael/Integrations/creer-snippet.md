🧠 Agent concerné : Mickael
# Agent Connector Snippet - Créer un snippet

## Description
Crée un nouveau snippet pour les agents.

## Endpoint
```
POST /agent/connector/snippet
```

## Paramètres

### Body (JSON)
```json
{
  "name": "string",
  "description": "string",
  "content": "string"
}
```

#### Champs requis
- `name`: string - Nom du snippet
- `description`: string - Description du snippet
- `content`: string - Contenu du snippet

## Réponse

### Succès (201)
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
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snippet" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "name": "Accueil Standard",
    "description": "Message d'accueil standard pour les nouveaux clients",
    "content": "Bonjour ! Bienvenue chez nous. Comment puis-je vous aider aujourd'hui ?"
  }'
```

## Notes
- Le snippet sera associé à l'organisation cliente de l'utilisateur authentifié
- Les snippets peuvent contenir des variables dynamiques
- Utiles pour standardiser les réponses des agents 