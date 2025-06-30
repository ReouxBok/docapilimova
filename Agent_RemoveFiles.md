# Agent - Supprimer des fichiers et textes

## Description
Supprime des fichiers et/ou du texte d'un agent.

## Endpoint
```
DELETE /agent/files-texts/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'agent

### Body (JSON)
```json
{
  "fileHashes": ["string"],
  "deleteText": "boolean"
}
```

#### Champs optionnels
- `fileHashes`: array - Hashes des fichiers à supprimer
- `deleteText`: boolean - Si true, supprime tout le texte ajouté

## Réponse

### Succès (200)
```json
{
  "message": "Files and texts removed successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X DELETE "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/files-texts/agent-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "fileHashes": ["hash1", "hash2"],
    "deleteText": true
  }'
```

## Notes
- Les fileHashes peuvent être obtenus via la route de récupération des fichiers de l'agent
- Si deleteText est true, tout le texte ajouté sera supprimé
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié 