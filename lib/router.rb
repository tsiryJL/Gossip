require 'bundler'
require 'pry'

class Router

  def initialize
    @controller =  Controller.new
  end 

#rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit donc perform.
  def perform 
    puts "BIENVENUE DANS THE GOSSIP PROJECT"

    while true

      #on affiche le menu
      puts "Tu veux faire quoi jeune mouss' ?"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux quitter l'app"
      params = gets.chomp.to_i 

   case params 
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip

      when 2
        puts "À bientôt !"
        break 

      else
        puts "Ce choix n'existe pas, merci de ressayer" 
      end
    end
  end

  def self.all
	# 1)création d'un array vide qui s'appelle all_gossips
  all_gossips = Array.new
	# 2)chaque ligne de ton CSV.each do |ligne|
	CSV.open('../db/gossip.csv','a+').each do |csv|
	  # 2-a) gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
	  # 2-b) all_gossips << gossip_provisoire - permet de rajouter le gossip provisoire au array
	# end
	# 3)return all_gossips - on renvoie le résultat
  end
end
binding.pry