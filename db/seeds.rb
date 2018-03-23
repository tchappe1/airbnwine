# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Vin.create!(active: true, region:'Bordeaux', appelation: 'Paulliac', vignoble: 'Médoc', producteur: 'Château Lafite-Rothshild', alcool: 13, parker: 93.3, jrobinson: 17, annee: 2009, nb_btl_caisse: 6, prix_btl: 310.10, description: "Un vin rouge de Pauillac gourmand et équilibré
La grandeur et la race de ce grand millésime Carruades de Lafite 2009, très grande année à cabernet sauvignon, profite de façon accrue au second vin issu de vignes plus jeunes du parcellaire de Lafite-Rothschild. La sélection extrême des lots pour concevoir la plus belle expression de Lafite permet d'atteindre un cran supérieur dans la conception de Carruades. Carruades de Lafite 2009 fait preuve d'une pureté et d'un bel éclat aromatique : une caractéristique liée à l'alternance des journées ensoleillées et des nuits fraîches propices à l'expression aromatique. ")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Paulliac', vignoble: 'Médoc', producteur: 'Château Mouton Rothshild', alcool: 13, parker: 99, jrobinson: 18, annee: 2010, nb_btl_caisse: 6, prix_btl: 1175, description: "Un vin rouge de Pauillac gourmand et équilibré
La grandeur et la race de ce grand millésime Carruades de Lafite 2009, très grande année à cabernet sauvignon, profite de façon accrue au second vin issu de vignes plus jeunes du parcellaire de Lafite-Rothschild. La sélection extrême des lots pour concevoir la plus belle expression de Lafite permet d'atteindre un cran supérieur dans la conception de Carruades. Carruades de Lafite 2009 fait preuve d'une pureté et d'un bel éclat aromatique : une caractéristique liée à l'alternance des journées ensoleillées et des nuits fraîches propices à l'expression aromatique.")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Saint-Estèphe', vignoble: 'Médoc', producteur: 'Haut Marbuzet', alcool: 13, parker: 99, jrobinson: 18, annee: 2008, nb_btl_caisse: 6, prix_btl: 42, description: "Haut-Marbuzet est à n'en pas douter l'une des valeurs les plus sûres de l'appellation. Il le prouve une fois de plus avec ce 2008 remarquable. La richesse du bouquet bien typé (fruits noirs, toasté, moka) invite à poursuivre la dégustation. Au palais se dessine un ensemble de grande qualité, promis à un bel avenir: attaque fraîche, milieu de bouche onctueux et concentré, tanins virils, finale très longue. Tout est réuni pour permettre une garde d’au moins cinq ou six ans, et bien plus encore pour de nouvelles sensations.")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Saint-Estèphe', vignoble: 'Médoc', producteur: 'Barrbaque Prestige', alcool: 13, parker: 99, jrobinson: 18, annee: 2009, nb_btl_caisse: 6, prix_btl: 13, description: "Haut-Marbuzet est à n'en pas douter l'une des valeurs les plus sûres de l'appellation. Il le prouve une fois de plus avec ce 2008 remarquable. La richesse du bouquet bien typé (fruits noirs, toasté, moka) invite à poursuivre la dégustation. Au palais se dessine un ensemble de grande qualité, promis à un bel avenir: attaque fraîche, milieu de bouche onctueux et concentré, tanins virils, finale très longue. Tout est réuni pour permettre une garde d’au moins cinq ou six ans, et bien plus encore pour de nouvelles sensations.")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Pessac Leognan', vignoble: '', producteur: 'Clarence de Haut-Brion', alcool: 13, parker: 99, jrobinson: 18, annee: 2009, nb_btl_caisse: 6, prix_btl: 130, description: "")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Saint Emilion', vignoble: '', producteur: 'Pavie Macquin', alcool: 13, parker: 99, jrobinson: 18, annee: 2009, nb_btl_caisse: 6, prix_btl: 76, description: "")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Fronsac', vignoble: '', producteur: 'Haut Laroque', alcool: 13, parker: 99, jrobinson: 18, annee: 2010, nb_btl_caisse: 6, prix_btl: 16, description: "")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Medoc', vignoble: '', producteur: 'Vieux Robin', alcool: 13, parker: 99, jrobinson: 18, annee: 2010, nb_btl_caisse: 6, prix_btl: 20, description: "")
Vin.create!(active: true, region:'Bordeaux', appelation: 'Haut-Medoc', vignoble: '', producteur: 'Les Allées de Cantermerle', alcool: 13, parker: 99, jrobinson: 18, annee: 2010, nb_btl_caisse: 6, prix_btl: 20, description: "")


OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"
