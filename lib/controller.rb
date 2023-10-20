require 'gossip'
require 'view'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content]) #Crée une instance de potin, sauvergardée juste dans cette variable
    gossip.save # Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV
  end

  def index_gossip
    gossips = Gossip.all # Utilise la méthode self.all de la classe Gossip pour obtenir tous les potins
    @view.index_gossips(gossips) # Appelle la méthode d'affichage de la vue pour afficher les potins
  end

  def erase_gossips
    params = @view.erase_gossips
    #appel à gossip pour effacer
    #to be defined
  end

end