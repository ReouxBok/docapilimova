🧠 Agent concerné : Charly
# Mettre à jour une présentation

## Description
Met à jour une présentation existante.

## Endpoint
```
PATCH /slides/{innerId}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `innerId`: string (requis) - ID interne de la présentation

### Body (JSON)
```json
{
  "title": "string",
  "topic": "string",
  "numberOfSlides": "number",
  "style": "string",
  "language": "string",
  "includeImages": "boolean"
}
```

#### Champs optionnels
- `title`: string - Nouveau titre de la présentation
- `topic`: string - Nouveau sujet de la présentation
- `numberOfSlides`: number - Nouveau nombre de diapositives
- `style`: string - Nouveau style de la présentation
- `language`: string - Nouvelle langue de la présentation
- `includeImages`: boolean - Inclure ou non des images

## Réponse

### Succès (200)
```json
{
  "innerId": "string",
  "title": "string",
  "topic": "string",
  "numberOfSlides": "number",
  "style": "string",
  "language": "string",
  "status": "string",
  "downloadUrl": "string",
  "slidesContent": [
    {
      "slideNumber": "number",
      "title": "string",
      "content": "string",
      "images": ["string"]
    }
  ],
  "updatedAt": "string"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Données de mise à jour invalides |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé à la présentation |
| 404 | Présentation non trouvée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Présentation mise à jour avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | Présentation non trouvée |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 20 Token(s)**

## Exemple d'utilisation

```bash
curl -X PATCH "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/slides/slides-123456" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "title": "Nouveau titre de présentation",
    "numberOfSlides": 20,
    "style": "creative"
  }'
```

## Notes complémentaires
- Seules les présentations appartenant à l'utilisateur authentifié peuvent être modifiées
- Seules les présentations terminées peuvent être mises à jour
- La mise à jour peut déclencher une régénération partielle
- Tous les champs sont optionnels, seuls ceux fournis seront mis à jour
- Le champ `updatedAt` indique la date de dernière modification
- Les modifications importantes peuvent nécessiter une nouvelle génération complète 