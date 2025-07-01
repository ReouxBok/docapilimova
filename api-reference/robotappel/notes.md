# RobotAppel - Gestion des Notes d'Appels

## Description
Ce module gère l'ajout de notes aux appels pour faciliter le suivi et la qualification.

## Routes

### Ajouter une note à un appel
**POST** `/notes/addNote/{callSid}`

Ajoute une note à un appel spécifique.

**Paramètres :**
- `callSid` (path, requis) : Le SID de l'appel auquel ajouter une note

**Corps de requête :**
```json
{
  "$ref": "#/components/schemas/AddNoteDto"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/components/schemas/callInfosSchema"
}
``` 