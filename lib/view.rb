class View
  def create_gossip
    puts "Entrez le nom de l'auteur du gossip :"
    author = gets.chomp

    puts "Entrez le contenu du gossip :"
    content = gets.chomp

    params = { content: content, author: author }
    return params
  end

  def index_gossips(gossips)
    gossips.each do |gossip|
      puts "Auteur : #{gossip.author}"
      puts "Contenu : #{gossip.content}"
      puts "----------------------"
    end
  end

  def erase_gossips
    puts "Quel numéro de gossip veux tu supprimer ?  :"
    params = gets.chomp
    return params
    #to be continued
  end

end

