# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vin.create(region:'Bordeaux', appelation: 'Paulliac', vignoble: 'Médoc', producteur: 'Château Lafite-Rothshild', alcool: 13, parker: 93, jrobinson: 17, annee: 2009, nb_btl_caisse: 6, prix_btl: 310)
Vin.create(region:'Bordeaux', appelation: 'Paulliac', vignoble: 'Médoc', producteur: 'Château Mouton Rothshild', alcool: 13, parker: 99, jrobinson: 18, annee: 2010, nb_btl_caisse: 6, prix_btl: 1175)
