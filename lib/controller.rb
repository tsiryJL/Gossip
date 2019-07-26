require'pry'

class Controller

    def create_gossip
        params = @view.create_gossip
        @gossip = gossip.new(author, content)
    end
