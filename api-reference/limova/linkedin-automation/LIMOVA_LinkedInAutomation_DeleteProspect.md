# LIMOVA - Suppression de Prospects d'une Campagne LinkedIn Automation

## Route

### Supprimer des prospects d'une campagne
**DELETE** `/linkedinAutomation/campaign/deleteProspect/{campaignId}`

Supprime des prospects d'une campagne LinkedIn Automation.

**Paramètres de chemin :**
- `campaignId` (string, requis) : L'identifiant de la campagne

**Corps de requête :**
```json
{
  "profileUrls": ["string"]
}
```

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "$ref": "#/definitions/linkedinCampaignSchema"
}
``` 