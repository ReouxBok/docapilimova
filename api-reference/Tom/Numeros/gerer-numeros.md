🧠 Agent concerné : Tom
# RobotAppel - Gestion des Numéros de Téléphone

## Description
Ce module gère l'ajout, la suppression et la configuration des numéros de téléphone pour les appels robotisés.

## Routes

### Ajouter un numéro de téléphone client
**POST** `/phoneNumber/addClientPhone`

Ajoute un numéro de téléphone à l'organisation client.

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/AddPhoneNumberDto"
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
{
  "phoneNumber": "string",
  "validationCode": "string"
}
```

### Supprimer un numéro de téléphone
**DELETE** `/phoneNumber/deletePhoneNumber/{id}`

Supprime un numéro de téléphone.

**Paramètres :**
- `id` (path, requis) : L'ID du numéro de téléphone à supprimer

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "phoneNumber": "string",
  "twillioResponse": "string",
  "dbResponse": "string"
}
```

### Récupérer tous les numéros de téléphone client
**GET** `/phoneNumber/getAllClientPhoneNumbers`

Récupère tous les numéros de téléphone de l'organisation client.

**Paramètres :**
- `id` (path, optionnel) : L'ID de l'organisation client

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "ClientOrgPhone"
  }
}
```

### Acheter et activer un numéro Twilio
**POST** `/phoneNumber/buyTwilioNumberAndActivate`

Achète et active un numéro de téléphone Twilio.

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/InboundParamsDto"
}
```

**Coût :** 40 Token(s)

**Réponse :**
```json
{
  "description": ""
}
```

### Récupérer un numéro Twilio par numéro client
**GET** `/phoneNumber/GetTwilioPhoneNumberByClientPhoneNumber/{clientPhoneNumber}`

Récupère un numéro Twilio associé à un numéro de téléphone client.

**Paramètres :**
- `clientPhoneNumber` (path, requis) : Le numéro de téléphone client

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/InboundClientNumber"
}
```

### Récupérer les numéros Twilio par organisation
**GET** `/phoneNumber/GetTwilioPhoneNumberByOrg`

Récupère tous les numéros Twilio de l'organisation.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "TwilioNumber"
  }
}
```

### Liste des numéros de téléphone par organisation
**GET** `/phoneNumber/getOrgPhoneNumberList/{orgId}`

Récupère la liste des numéros de téléphone d'une organisation.

**Paramètres :**
- `orgId` (path, optionnel) : L'ID de l'organisation client

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "id": "string",
    "phoneNumber": "string",
    "friendlyName": "string",
    "status": "string",
    "totalCalls": "string",
    "createdAt": "string",
    "direction": "string",
    "twilioNumber": "string",
    "phoneNumberSid": "string"
  }
}
``` 