require 'csv'
class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open('gossips.csv', 'a') do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossips = [] # Crée un tableau vide pour stocker les potins

    CSV.foreach('gossips.csv') do |row|
      author, content = row
      gossip_provisoire = Gossip.new(author, content) # Crée un objet gossip à partir des données du CSV
      all_gossips << gossip_provisoire # Ajoute le gossip provisoire au tableau
    end
    return all_gossips
  end

  def erase_gossips
    #to be defined
  end

end
