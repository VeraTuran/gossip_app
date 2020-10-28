class GossipsController < ApplicationController
    def new
        @gossip = Gossip.new
    end

    def create 
        @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: 11)

        if @gossip.save
            redirect_to home_path, notice: "Potin sauvegardé"
        else
            puts "something goes wrong"
            puts @gossip.errors.messages
            render 'new'
        end
    end
end