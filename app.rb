require 'bundler' # lie au gem necessaire a l'application
Bundler.require
require_relative 'lib/monstre'

# cree l'objet monstre avec les parametres type
larves = Monstre.new('Larves')
cavernes = Monstre.new('Monstres des cavernes')
plaines = Monstre.new('Monstres des Plaines herbeuses')

# executer l'ecriture 
larves.save_to_json('monstre_larve.json')
cavernes.save_to_json('monstre_caverne.json')
plaines.save_to_json('monstre_plaine_herbeuse.json')




