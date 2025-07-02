🧠 Agent concerné : Lou
# LIMOVA SEO - Mettre à jour l'historique d'un job

## Description
Met à jour l'historique d'un job SEO existant.

## Endpoint
```
PUT /seo/job/history/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID du job SEO

### Body (JSON)
```json
{
  "action": "string",
  "details": "string"
}
```

#### Champs requis
- `action`: string - Action effectuée sur le job
- `details`: string - Détails de l'action

## Réponse

### Succès (200)
```json
{
  "message": "Job history updated successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/seo/job/history/job-id-123" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "action": "status_changed",
    "details": "Job status changed from pending to running"
  }'
```

## Notes
- Le job doit appartenir à l'organisation cliente de l'utilisateur authentifié
- L'action et les détails sont ajoutés à l'historique du job
- Utile pour le suivi des modifications et le debugging 