🧠 Agent concerné : Charly
# Ajouter un fichier client

## Description
Ajoute un fichier à l'organisation client spécifiée.

## Endpoint
```
POST /file/addClientFile/{id}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: multipart/form-data`

## Paramètres

### Path
- `id`: string (requis) - ID de l'organisation client

### Body (multipart/form-data)
```json
{
  "folder": "string",
  "documentName": "string",
  "file": "file"
}
```

#### Champs requis
- `documentName`: string - Nom du document
- `file`: file - Fichier à uploader

#### Champs optionnels
- `folder`: string - Dossier de destination

## Réponse

### Succès (200)
```json
{
  "id": "string",
  "clientOrgType": "string",
  "users": [
    {
      "id": "string",
      "role": "string",
      "lastName": "string",
      "firstName": "string",
      "birthday": "string"
    }
  ],
  "clientOrgActivitySectors": ["string"],
  "name": "string",
  "birthday": "string",
  "onboarded": "boolean",
  "contacts": [
    {
      "id": "string",
      "type": "string",
      "default": "boolean",
      "street": "string",
      "streetNumber": "string",
      "city": "string",
      "zip": "string",
      "country": "string",
      "value": "string",
      "isActif": "boolean",
      "prefix": "string",
      "optin": [
        {
          "optinDate": "string",
          "optoutDate": "string"
        }
      ]
    }
  ]
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Fichier invalide ou paramètres manquants |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à l'organisation |
| 404 | Organisation client non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Fichier ajouté avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Organisation non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 20 Token(s)**
**Cost MB Request: 0.2 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/file/addClientFile/org-id-123" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "documentName=rapport_activite.pdf" \
  -F "folder=documents" \
  -F "file=@/path/to/rapport_activite.pdf"
```

## Notes complémentaires
- L'organisation client doit appartenir à l'utilisateur authentifié
- Les formats de fichiers supportés incluent : PDF, DOC, DOCX, XLS, XLSX, TXT, etc.
- La taille maximale de fichier est généralement limitée à 10MB
- Le fichier sera stocké de manière sécurisée et accessible uniquement aux utilisateurs autorisés
- Le champ `folder` permet d'organiser les fichiers par catégorie 