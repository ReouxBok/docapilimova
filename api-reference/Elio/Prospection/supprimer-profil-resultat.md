🧠 Agent concerné : Elio
# LIMOVA - Suppression d'un Profil d'un Résultat de Recherche LinkedIn Automation

## Route

### Supprimer un profil d'un résultat de recherche
**POST** `/linkedinAutomation/profile/history/remove-profile-research-result/{id}`

Supprime un profil d'un résultat de recherche LinkedIn par ID.

**Paramètres de chemin :**
- `id` (string, requis) : L'identifiant du résultat de recherche

**Corps de requête :**
```json
{
  "profile_url": "string"
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{}
``` 