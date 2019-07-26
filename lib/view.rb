require'bundler'
require'pry'
class View

    def create_gossip
        @view = View.new
            puts "Ecrire l'author"
                var1 = gets.chomp
            puts "Ecrire le content"
                var2 = gets.chomp
        return params = {content:var2, author:var1}
    end
end
puts create_gossip