# Chat - Gestion des Conversations

## Description
Ce module gère les conversations avec les chatbots et la sélection automatique des bots.

## Routes

### Parler à un bot
**POST** `/chat/talkToBot/{chatId}`

Envoie un message à un bot et reçoit une réponse en streaming.

**Paramètres :**
- `chatId` (path, requis) : L'ID de la conversation de chat

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/MessageBotDto"
}
```

**Coût :** 20 Token(s) + 5 Token(s) par KB de réponse

**Réponse :**
```json
{
  "description": "Streaming response for the bot"
}
```

### Récupérer les IDs des conversations
**GET** `/chat/conversationsIds/{clientOrgId}/{agentId}`

Récupère tous les IDs de conversations pour une organisation et un agent donnés.

**Paramètres :**
- `clientOrgId` (path, requis) : L'ID de l'organisation client
- `agentId` (path, requis) : L'ID de l'agent

**Exemple :**
```
/chat/conversationsIds/01J66Q141KT3RG07GTWTHMECKH/agent123
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "chatId": "string",
    "discussionName": "string"
  }
}
```

### Gérer une conversation
**GET** `/chat/conversation/{chatId}`

Récupère une conversation par son ID.

**Paramètres :**
- `chatId` (path, optionnel) : L'ID de la conversation

**Exemple :**
```
/chat/conversation/5b662bb1-552f-4e7b-abf9-3e099268cb77
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array"
}
```

**PUT** `/chat/conversation/{chatId}`

Met à jour une conversation.

**Paramètres :**
- `chatId` (path, optionnel) : L'ID de la conversation

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/DiscussionUpdate"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/definitions/ChatHistory"
}
```

**DELETE** `/chat/conversation/{chatId}`

Supprime une conversation.

**Paramètres :**
- `chatId` (path, optionnel) : L'ID de la conversation

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/definitions/ChatHistory"
}
```

### Sélectionner un bot par prompt
**POST** `/chat/selectBotByPrompt`

Sélectionne automatiquement le meilleur bot pour répondre à une question.

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/BotSelector"
}
```

**Coût :** 20 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/BotSelectorResponse"
}
```

### Arrêter un message
**POST** `/chat/stopMessage/{messageID}`

Arrête l'exécution d'un message en cours.

**Paramètres :**
- `messageID` (path, requis) : L'ID du message à arrêter

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/StopMessageDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "description": "The message has been successfully stopped."
}
```

### Exporter un message
**GET** `/chat/exportMessage/{messageID}/{format}`

Exporte un message dans un format spécifique.

**Paramètres :**
- `messageID` (path, requis) : L'ID du message à exporter
- `format` (path, requis) : Le format d'export (ex: pdf)

**Exemple :**
```
/chat/exportMessage/5b662bb1-552f-4e7b-abf9-3e099268cb77/pdf
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "url": "string"
}
``` 