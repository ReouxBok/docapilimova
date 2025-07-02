🧠 Agent concerné : Tom
# RobotAppel - Historique des Appels

## Description
Ce module gère la récupération et l'exportation de l'historique des appels.

## Routes

### Récupérer l'historique des appels
**POST** `/callHistory/GetCallHistory`

Récupère l'historique des appels avec pagination optionnelle.

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/GetCallHistoryWithPaginationDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "total": "number",
  "calls": [
    {
      "$ref": "callInfosSchema"
    }
  ],
  "page": "number",
  "limit": "number",
  "totalPages": "number",
  "averageCallDuration": "number",
  "total_call_time": "number"
}
```

### Exporter l'historique des appels
**POST** `/callHistory/ExportCallHistory`

Exporte l'historique des appels.

**Paramètres :**
- `header` (query, optionnel) : Champs d'en-tête optionnels (séparés par des virgules)
  - Headers disponibles : callSid, batchId, batchName, clientOrgId, createdAt, ended_status, from, to, clean_interraction, interraction, qualification, record_url, sendDate, status, summary, duration

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/GetCallHistoryDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "url": "string"
}
```

### Exporter l'historique par IDs
**POST** `/callHistory/ExportCallHistoryById`

Exporte l'historique des appels par IDs spécifiques.

**Paramètres :**
- `header` (query, optionnel) : Champs d'en-tête optionnels (séparés par des virgules)
  - Headers disponibles : callSid, batchId, batchName, clientOrgId, createdAt, ended_status, from, to, clean_interraction, interraction, qualification, record_url, sendDate, status, summary, duration

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/CallIds"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "url": "string"
}
```

### Statut d'un lot
**GET** `/callHistory/batch-status/{id}`

Récupère le statut d'un lot d'appels.

**Paramètres :**
- `id` (path, requis) : L'ID du lot

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/batchesInfosSchema"
}
```

### Récupérer les informations d'un appel
**GET** `/callHistory/retrieveCallInfo/{callId}`

Récupère les informations détaillées d'un appel spécifique.

**Paramètres :**
- `callId` (path, requis) : L'ID de l'appel

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/callInfosSchema"
}
```

### Historique des lots
**POST** `/callHistory/getBatchHistory`

Récupère l'historique des lots d'appels.

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/GetBatchHistoryDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "total": "number",
  "batches": [
    {
      "$ref": "batchesInfosSchema"
    }
  ],
  "page": "number",
  "limit": "number",
  "totalPages": "number"
}
```

### Durée moyenne des appels
**GET** `/callHistory/averageCallDuration`

Récupère la durée moyenne des appels.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/"
}
``` 