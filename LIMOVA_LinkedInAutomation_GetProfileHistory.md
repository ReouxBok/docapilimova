# LIMOVA - Historique de Profil LinkedIn Automation

## Route

### Récupérer l'historique d'un profil
**POST** `/linkedinAutomation/campaign/getProfileHistory`

Récupère l'historique d'un profil LinkedIn dans une campagne.

**Corps de requête :**
```json
{
  "profileUrl": "string"
}
```

**Coût :** 10 Token(s)

**Réponse :**
```json
[
  { "$ref": "#/definitions/linkedinActionSchema" }
]
``` 