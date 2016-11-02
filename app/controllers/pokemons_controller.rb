class PokemonsController < ApplicationController
  def capture
     @id = params[:id]
     @pokemon = Pokemon.find(@id)
     @pokemon.trainer_id = current_trainer.id
     @pokemon.save!
     redirect_to root_path
  end

  def damage
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health -= 10
    @pokemon.save!
    # if @pokemon.health <= 0
    #   @pokemon.destroy!
    # end
    redirect_to trainer_path(:id => @pokemon.trainer_id)
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    # @pokemon = Pokemon.new pokemon_params
    # @pokemon = Pokemon.create pokemon_params
    # @pokemon.health = 100
    # @pokemon.level = 1
    # @pokemon.trainer_id = current_trainer.id
    @pokemon = Pokemon.new(:name => params[:pokemon][:name], :level => 1, :health => 100,
    :trainer_id => current_trainer.id)
    if @pokemon.save
      redirect_to current_trainer
      # redirect_to trainer_path(:id => current_trainer.id)
    else
      flash[:error] = "@pokemon.errors.full_messages.to_sentence"
      render :new
    end
  end


  def pokemon_params
    params.require(:pokemon).permit(:name)
  end


  def heal
    @pokemon = Pokemon.find(params[:id])
    @pokemon.health += 10
    @pokemon.save!
    redirect_to trainer_path(:id => current_trainer.id)
  end

end
