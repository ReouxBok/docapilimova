🧠 Agent concerné : Mickael
# Agent - Mettre à jour un agent

## Description
Met à jour un agent existant avec les nouveaux paramètres.

## Endpoint
```
PUT /agent/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'agent à mettre à jour

### Body (JSON)
```json
{
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
```

#### Champs optionnels
- `name`: string - Nom de l'agent
- `role`: string - Rôle de l'agent
- `prompt`: string - Prompt de l'agent
- `active`: boolean - Indique si l'agent est actif
- `personality`: string - Personnalité de l'agent (friendly, casual, professional, funny, empathetic, authoritative, warm, concise)
- `freeText`: string - Texte libre de l'agent
- `transferWords`: array - Mots qui déclenchent un transfert vers un agent humain
- `maxNotUnderstood`: number - Nombre maximum de fois où l'agent ne comprend pas la demande avant d'être transféré
- `triggerUserAskHuman`: boolean - Si l'agent déclenche un transfert quand l'utilisateur le demande
- `transferMessage`: string - Message affiché lors du transfert vers un agent humain

## Réponse

### Succès (200)
```json
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
```

## Coût
**Cost Fix: 20 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/agent-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "name": "Assistant Client Mise à jour",
    "active": false,
    "personality": "professional"
  }'
```

## Notes
- Seuls les champs fournis dans le body seront mis à jour
- Les champs non fournis conserveront leurs valeurs actuelles
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié 