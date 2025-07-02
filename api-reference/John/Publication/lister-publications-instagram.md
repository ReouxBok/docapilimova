🧠 Agent concerné : John
# LIMOVA - Récupération des Jobs Instagram

## Route

### Récupérer tous les jobs Instagram
**GET** `/instagram/getInstagramJobs`

Récupère tous les jobs Instagram.

**Coût :** 5 Token(s)

**Réponse :**
```json
{
  "type": "array",
  "items": {
    "$ref": "#/components/schemas/InstagramJobDto"
  }
}
``` 