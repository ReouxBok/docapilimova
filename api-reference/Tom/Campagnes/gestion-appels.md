🧠 Agent concerné : Tom
# RobotAppel - Gestion des Appels

## Description
Ce module gère l'envoi et la configuration des appels robotisés via l'API.

## Routes

### Envoyer un lot d'appels
**POST** `/robotAppel/batch-call`

Envoie un lot d'appels à une liste de numéros de téléphone.

**Corps de requête :**
```json
{
  "multipart/form-data": {
    "$ref": "#/components/schemas/BatchCallDto"
  }
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "batchId": "string",
  "batchInfos": "object"
}
```

### Vérifier un fichier CSV
**POST** `/robotAppel/csv-checker`

Traite les données depuis un fichier ou une URL Google Sheets.

**Corps de requête :**
```json
{
  "multipart/form-data": {
    "$ref": "#/components/schemas/FileOrGoogleSheetUrlDto"
  }
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/FileOrGoogleSheetUrlDto"
}
```

### Envoyer un appel unique
**POST** `/robotAppel/one-call/{phoneNumber}`

Envoie un appel à un numéro spécifique.

**Paramètres :**
- `phoneNumber` (path, requis) : Le numéro de téléphone à appeler

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/OneCallDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "batchId": "string",
  "batchInfos": "object"
}
```

### Récupérer les paramètres d'appel
**GET** `/robotAppel/callParams`

Récupère les paramètres de configuration des appels.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "object"
}
```

### Échantillon de voix
**GET** `/robotAppel/voiceSample/{lang}/{model}`

Récupère un échantillon de voix pour une langue et un modèle spécifiques.

**Paramètres :**
- `lang` (path, requis) : La langue de l'échantillon de voix
- `model` (path, requis) : Le modèle de voix

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "object"
}
```

### Désactiver un numéro entrant
**POST** `/robotAppel/desactivateInboundPhoneNumber/{phoneNumberSid}`

Désactive un numéro de téléphone entrant.

**Paramètres :**
- `phoneNumberSid` (path, requis) : Le SID du numéro de téléphone à désactiver

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InboundParamsDto"
}
```

### Activer un numéro entrant
**POST** `/robotAppel/activeInboundPhoneNumber/{phoneNumberSid}`

Active un numéro de téléphone entrant.

**Paramètres :**
- `phoneNumberSid` (path, requis) : Le SID du numéro de téléphone à activer

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/InboundParamsDto"
}
```

**Coût :** 80 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InboundParamsDto"
}
```

### Récupérer les informations d'un numéro entrant
**POST** `/robotAppel/getInboundDataInfo/{phoneNumberSid}`

Récupère les informations d'un numéro de téléphone entrant.

**Paramètres :**
- `phoneNumberSid` (path, requis) : Le SID du numéro de téléphone

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InboundParamsDto"
}
```

### Activer tous les numéros entrants
**POST** `/robotAppel/activateAllInboundPhoneNumber`

Active tous les numéros de téléphone entrants.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "description": "The inbound phone numbers have been successfully activated."
}
```

## Routes de Gestion des Agents d'Appel

### Créer un agent d'appel
**POST** `/robotAppel/createCallAgent`

Crée un nouvel agent d'appel.

**Corps de la requête :**
```json
{
  "clientOrgId": "123456789",
  "agentName": "Agent 1",
  "voice": "fr-6546ef6-6f46wef876s",
  "language": "fr",
  "baseInfo": {},
  "phoneNumber": {
    "phoneNumber": "string",
    "friendlyName": "string",
    "clientId": "string"
  },
  "firstSentence": "string",
  "prompt": "string",
  "backgroundTrack": "string",
  "maxDuration": "string",
  "tools": ["string"],
  "knowledgeBaseId": "knowledgeBaseId"
}
```

**Coût :** 5 Token(s)

### Mettre à jour un agent d'appel
**PATCH** `/robotAppel/updateCallAgent/{id}`

Met à jour un agent d'appel existant.

**Paramètres :**
- `id` (path, requis) : L'ID de l'agent d'appel

**Coût :** 5 Token(s)

### Supprimer un agent d'appel
**POST** `/robotAppel/deleteCallAgent/{id}`

Supprime un agent d'appel.

**Paramètres :**
- `id` (path, requis) : L'ID de l'agent d'appel à supprimer

**Coût :** 5 Token(s)

### Obtenir tous les agents d'appel
**GET** `/robotAppel/getCallAgent`

Récupère tous les agents d'appel.

**Coût :** 5 Token(s)

### Obtenir un agent d'appel par ID
**GET** `/robotAppel/getCallAgent/{id}`

Récupère un agent d'appel par son ID.

**Paramètres :**
- `id` (path, requis) : L'ID de l'agent d'appel

**Coût :** 5 Token(s)

### Dupliquer un agent d'appel
**POST** `/robotAppel/duplicateCallAgent/{id}`

Duplique un agent d'appel existant.

**Paramètres :**
- `id` (path, requis) : L'ID de l'agent d'appel à dupliquer

**Coût :** 5 Token(s)

## Routes d'Intégration

### Obtenir les outils par organisation client
**GET** `/robotAppel/integration/get-tools`

Récupère les outils par ID d'organisation client.

**Coût :** 5 Token(s) 