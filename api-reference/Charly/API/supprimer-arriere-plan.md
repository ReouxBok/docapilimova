🧠 Agent concerné : Charly
# Supprimer l'arrière-plan d'une image

## Description
Supprime l'arrière-plan d'une image uploadée.

## Endpoint
```
POST /images/backgroundRemover
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: multipart/form-data`

## Paramètres

### Body (multipart/form-data)
```json
{
  "image": "file"
}
```

#### Champs requis
- `image`: file - Image à traiter (formats supportés: JPG, PNG, WEBP)

## Réponse

### Succès (200)
```json
{
  "url": "string",
  "processingTime": "number"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Image invalide ou format non supporté |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 413 | Image trop volumineuse |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Arrière-plan supprimé avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 413 | Fichier trop volumineux |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 10 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/images/backgroundRemover" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -F "image=@/path/to/image.jpg"
```

## Notes complémentaires
- Formats d'image supportés : JPG, PNG, WEBP
- Taille maximale : 10MB
- L'image traitée sera disponible via l'URL retournée
- Le traitement peut prendre quelques secondes selon la complexité de l'image
- L'image originale n'est pas modifiée, une nouvelle version est créée
- L'URL de l'image traitée est temporaire et expire après 24h 