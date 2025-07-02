🧠 Agent concerné : Mickael
# Agent - Ajouter des fichiers et textes

## Description
Ajoute des fichiers et/ou du texte à un agent pour enrichir sa base de connaissances.

## Endpoint
```
PUT /agent/files-texts/{id}
```

## Paramètres

### Path
- `id`: string (requis) - ID de l'agent

### Body (multipart/form-data)
- `files`: array of files (optionnel) - Fichiers à ajouter
- `text`: string (optionnel) - Texte à ajouter

## Réponse

### Succès (200)
```json
{
  "message": "Files and texts added successfully"
}
```

## Coût
**Cost Fix: 20 Token(s)**
**Cost MB Request: 0.2 Token(s)**

## Exemple d'utilisation

```bash
curl -X PUT "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/agent/files-texts/agent-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "files=@document1.pdf" \
  -F "files=@document2.docx" \
  -F "text=Informations supplémentaires sur nos produits et services"
```

## Notes
- Les fichiers supportés incluent PDF, DOCX, TXT, etc.
- Le texte ajouté enrichit la base de connaissances de l'agent
- Les fichiers sont analysés et indexés pour être utilisés dans les conversations
- L'agent doit appartenir à l'organisation cliente de l'utilisateur authentifié 