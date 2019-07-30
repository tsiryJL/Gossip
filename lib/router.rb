$:.unshift File.expand_path("./../lib", __FILE__)
require 'pry'
require 'bundler'
require'csv'
require'controller'
Bundler.require

class Router
  attr_accessor :controller

  def initialize
      @controller = Controller.new
  end 

  def perform
      puts "Bienvenue dans the gossip project"

        while true
          puts "tu veux faire quoi?"
          puts "1- Créer un gossip"
          puts "2- Voir la liste des enregistrements"
          puts "3- Supprimer tout"
          puts "4- Quitter l'application"
            params = gets.chomp

              case params
                when "1"
                  puts "Tu as choisi de crée un gossip"
                    @controller.create_gossip
                
                when "2"
                  puts "Liste des enregistrements"
                    @controller.all
                
                  when "3"
                    puts "suppr"
                      @controller.delete

                when "4" 
                  puts "à bientôt !"
                break
        else
            puts "ce choix n'existe pas, merci de ressayer"
              end 
        end      
    end
end



