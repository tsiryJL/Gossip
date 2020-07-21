$:.unshift File.expand_path("./../lib", __FILE__)
require 'view'
require 'gossip'
require 'bundler'
require 'pry'
Bundler.require

class Controller
    attr_accessor :view, :gossip
    def initialize
        @view = View.new 
    end

    def create_gossip
        params = @view.create_gossip
        gossip = Gossip.new(params[:author],params[:content])
        gossip.save
    end

    def all
        CSV.foreach('./db/gossip.csv') do |row|
            puts row.inspect
        end
    end
    
    def delete
        CSV.open("./db/gossip.csv","w"){|csv|csv.truncate(0)}
    end
end


