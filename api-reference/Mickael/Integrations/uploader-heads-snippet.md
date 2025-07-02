🧠 Agent concerné : Mickael
# Agent Connector Snippet - Uploader une image de tête

## Description
Upload une image de tête pour les snippets.

## Endpoint
```
POST /agent/connector/snipet/upload-heads
```

## Paramètres

### Body (multipart/form-data)
- `file`: file (requis) - Image de tête à uploader

## Réponse

### Succès (200)
```json
{
  "message": "Head image uploaded successfully"
}
```

## Coût
**Cost Fix: 5 Token(s)**
**Cost MB Request: 0.2 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/connector/snipet/upload-heads" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "file=@head-image.jpg"
```

## Notes
- L'image sera associée à l'organisation cliente de l'utilisateur authentifié
- Formats supportés : JPG, PNG, GIF
- Taille maximale recommandée : 2MB 