require'pry'
require'bundler'
require'csv'
Bundler.require

class View 
    def create_gossip
        params = Array.new
        @view = View.new
            puts "Ecrire l'author"
                @author = gets.chomp
            puts "Ecrire le content"
                @content = gets.chomp
        return params = {author: @author,content: @content}
    end
end


