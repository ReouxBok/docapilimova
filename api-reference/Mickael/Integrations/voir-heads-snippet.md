🧠 Agent concerné : Mickael
# Agent Connector Snippet - Récupérer les images de têtes

## Description
Récupère la liste des noms d'images de têtes disponibles.

## Endpoint
```
GET /agent/connector/snipet/get-heads
```

## Paramètres

### Query (optionnel)
- `forceReset`: boolean - Force la réinitialisation du cache

## Réponse

### Succès (200)
```json
{
  "heads": ["string"]
}
```

## Coût
**Cost Fix: 5 Token(s)**

## Exemple d'utilisation

```bash
curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snipet/get-heads?forceReset=true" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes
- Retourne la liste des noms d'images de têtes disponibles
- Le paramètre forceReset permet de rafraîchir le cache si nécessaire 