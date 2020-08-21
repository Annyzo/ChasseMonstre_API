class Monstre

	# Fonction initial pour recuperer les donnes avec le lien API
    def initialize(typ)
        @uri = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=' + typ)
    end
    
    # Fonction d'ecrire les donnes dans un fichier JSON
    def save_to_json(db)
        File.open("./db/" + db, 'w') do |file|
            file.write(@uri.parse)
        end
    end
end