🧠 Agent concerné : Mickael
# Créer un agent

## Description
Crée un nouvel agent avec les paramètres spécifiés.

## Endpoint
```
POST /agent
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

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

#### Champs requis
- `active`: boolean - Indique si l'agent est actif

#### Champs optionnels
- `name`: string - Nom de l'agent
- `role`: string - Rôle de l'agent
- `prompt`: string - Prompt de l'agent
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
  "transferMessage": "string",
  "clientOrgId": "string",
  "createdAt": "string",
  "updatedAt": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Paramètres manquants ou invalides |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à l'organisation |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Agent créé avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 20 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "name": "Assistant Client",
    "role": "Support Client",
    "prompt": "Tu es un assistant clientèle...",
    "active": true,
    "personality": "friendly",
    "freeText": "Bonjour, comment puis-je vous aider ?",
    "transferWords": ["humain", "agent", "vrai"],
    "maxNotUnderstood": 3,
    "triggerUserAskHuman": true,
    "transferMessage": "Je vous transfère vers un agent humain..."
  }'
```

## Notes complémentaires
- L'agent créé sera associé à l'organisation cliente de l'utilisateur authentifié
- Le champ `active` est obligatoire
- Les autres champs sont optionnels et peuvent être définis ultérieurement
- L'agent sera automatiquement configuré avec les paramètres par défaut pour les champs non fournis
- L'ID de l'agent sera généré automatiquement 