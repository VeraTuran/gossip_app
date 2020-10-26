class StaticPagesController < ApplicationController
  def home
    
  end

  def team

  end

  def contact

  end

  def welcome
    @user_connected = params[:first_name]
  end

  def potin 
    @gossip_chose = params[:potin]
  end

end
