🧠 Agent concerné : Elio
# LIMOVA - Vérification du Token de Connexion LinkedIn Automation

## Route

### Vérifier l'existence du token de connexion
**GET** `/linkedinAutomation/checkExistLoginTokenFromCache`

Vérifie si un token de connexion existe dans le cache.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "boolean",
  "description": "Check if login token exists in cache"
}
``` 