# Niveau 2

Nous venons de recevoir le MVP de notre application de communication e-santé. Nous souhaitons une API avec 2 endpoints pour créer une `Communication` puis pour consulter toutes les `Communication` émises.

Voici les instructions pour lancer l'application :

```bash
bundle install
rails db:create
rails db:migrate
rake populate:init
rails server
```

Cela vous permettra d'avoir une application rails avec un volume de donnée similaire à notre prédictions d'usage.

Nos premiers utilisateurs nous ont signalé que l'application était particulièrement lente ...

La consigne principale pour ce niveau est d'améliorer ces 2 endpoints.
Nous attendons une approche data driven ainsi que des explications claires sur les améliorations proposées.

## Endpoints

### Lister les `Communication`

```bash
curl -X GET http://localhost:3000/api/communications -H 'Content-Type: application/json'
```

### Créer une `Communication`

Pour cet exemple vous aurez besoin de créer un `Practitioner` en amont via : `Practitioner.create(first_name: 'Fritz', last_name: 'Kertzmann')`

```bash
curl -X POST \
  http://localhost:3000/api/communications \
  -H 'Content-Type: application/json' \
  -d '{
	"communication" : {
		"first_name" : "Fritz",
		"last_name" : "Kertzmann",
		"sent_at" : "2019-01-01"
	}
}'
```


