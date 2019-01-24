# Niveau 1

Nous souhaitons développer une application e-santé qui permette à des professionnels de santé (`Practitioner`) d'envoyer des compte rendus médicaux (`Communication`).

Nous souhaitons connaître à la fin du mois notre CA journalier en suivant la logique métier suivante :
- 0,10 € par `Communication`
- +0,18 € si le mode couleur est demandé (valeur par défaut : `false`)
- +0,07 € par page additionnelle (la première page est déjà comprise dans les 0,10 € initiaux)
- +0,60 € si l'auteur (le `Practitioner`) a le mode "express delivery" activé (valeur par défaut : `false`)

La consigne principale pour ce niveau est donc d'écrire l'application qui va générer `output.json` (on s'intéresse aux résultats plus qu'à la forme du document) à partir de `data.json`.

Une fois ce challenge terminé -> [niveau suivant](https://github.com/honestica/ruby-jobs/tree/master/level2)