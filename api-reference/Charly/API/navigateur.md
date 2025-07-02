🧠 Agent concerné : Charly
# Effectuer une recherche web

## Description
Effectue une recherche web via l'API SerpAPI.

## Endpoint
```
POST /browser/serpapi-search
```

## Authentification
- **Type :** `Authorization: Bearer <token>`
- **Headers requis :**
  - `Content-Type: application/json`

## Paramètres

### Body (JSON)
```json
{
  "query": "string",
  "location": "string",
  "language": "string",
  "numResults": "number"
}
```

#### Champs requis
- `query`: string - Terme de recherche

#### Champs optionnels
- `location`: string - Localisation pour la recherche
- `language`: string - Langue de la recherche (ex: "fr", "en")
- `numResults`: number - Nombre de résultats à retourner (défaut: 10)

## Réponse

### Succès (200)
```json
{
  "results": [
    {
      "title": "string",
      "link": "string",
      "snippet": "string",
      "position": "number"
    }
  ],
  "totalResults": "number",
  "searchTime": "number"
}
```

### Erreurs courantes

| Code | Cause probable |
|------|----------------|
| 400 | Requête de recherche invalide |
| 401 | Token d'authentification invalide |
| 403 | Accès non autorisé |
| 429 | Limite de requêtes dépassée |
| 500 | Erreur interne du serveur |

## Codes HTTP

| Code | Signification |
|------|---------------|
| 200 | Recherche effectuée avec succès |
| 400 | Requête malformée |
| 401 | Non authentifié |
| 403 | Non autorisé |
| 429 | Trop de requêtes |
| 500 | Erreur interne du serveur |

## Coût
**Cost Fix: 20 Token(s)**

## Exemple d'utilisation

```bash
curl -X POST "https://kainotomiaprodbackend-brbzd3f2gjbugtcd.francecentral-01.azurewebsites.net/browser/serpapi-search" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -d '{
    "query": "intelligence artificielle",
    "location": "France",
    "language": "fr",
    "numResults": 10
  }'
```

## Notes complémentaires
- Utilise l'API SerpAPI pour effectuer les recherches web
- Les résultats sont triés par pertinence
- La localisation permet d'obtenir des résultats géolocalisés
- Le nombre de résultats est limité à 100 maximum
- Les recherches sont mises en cache pour optimiser les performances
- Respectez les limites de taux de l'API SerpAPI 