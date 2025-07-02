🧠 Agent concerné : Charly
# LIMOVA - Manipulateur de PDF

## Description
Ce module permet de télécharger et d'extraire le texte des fichiers PDF.

## Routes

### Télécharger et extraire le texte d'un PDF
**GET** `/pdfManipulator/download-and-extract/{url}`

Télécharge un PDF depuis une URL et en extrait le texte.

**Paramètres :**
- `url` (path, requis) : L'URL du PDF à télécharger et analyser

**Coût :** 20 Token(s) + 0.2 Token(s) par MB de requête

**Réponse :**
```json
{
  "text": "string",
  "pages": "number",
  "fileSize": "number",
  "extractionTime": "number",
  "message": "The text has been successfully extracted from the PDF."
}
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Path
- `url`: string (requis) - URL du PDF à télécharger et analyser (doit être encodée en base64)

## Réponse

### Succès (200)
```json
{
  "text": "string",
  "pages": "number",
  "fileSize": "number",
  "extractionTime": "number",
  "message": "The text has been successfully extracted from the PDF."
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | URL invalide ou PDF non accessible |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 404 | PDF non trouvé à l'URL spécifiée |
| 413 | PDF trop volumineux |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Texte extrait avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 404 | PDF non trouvé |
| 413 | Fichier trop volumineux |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 20 Token(s)**
**Cost MB Request: 0.2 Token(s)**

## Exemple d'utilisation

```bash
# Encoder l'URL en base64
URL_B64=$(echo -n "https://example.com/document.pdf" | base64)

curl -X GET "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/pdfManipulator/download-and-extract/$URL_B64" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

## Notes complémentaires
- L'URL du PDF doit être encodée en base64 dans le path
- Formats PDF supportés : PDF standard, PDF protégés (si mot de passe fourni)
- Taille maximale : 50MB
- L'extraction peut prendre plusieurs secondes selon la taille du PDF
- Le texte extrait conserve la structure des paragraphes
- Les images et graphiques ne sont pas extraits
- Les PDF protégés par mot de passe ne peuvent pas être traités
- L'URL doit être accessible publiquement 