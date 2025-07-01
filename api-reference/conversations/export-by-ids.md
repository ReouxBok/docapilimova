# Agent Conversation - Exporter des conversations par IDs

## Description
Exporte des conversations spécifiques en fournissant leurs IDs.

## Endpoint
```
POST /agent/conversation/exportConversationByIds
```

## Paramètres

### Query (optionnel)
- `header`: string - Champs d'en-tête optionnels (séparés par des virgules)
  - Champs disponibles: id, status, updatedAt, summary, lastSummaryAt, qualification, name, agentId, clean_interraction, interraction

### Body (JSON)
```json
{
  "conversationIds": ["string"]
}
```

#### Champs requis
- `conversationIds`: array - IDs des conversations à exporter

## Réponse

### Succès (200)
```json
{
  "url": "string"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/conversation/exportConversationByIds?header=id,status,summary" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "conversationIds": ["conv-id-1", "conv-id-2", "conv-id-3"]
  }'
```

## Notes
- L'URL retournée permet de télécharger le fichier d'export
- Le format d'export est généralement CSV ou Excel
- Les conversations doivent appartenir à l'organisation cliente de l'utilisateur authentifié 