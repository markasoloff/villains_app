class Api::VillainsController < ApplicationController
  def index

    @villains = Villain.all
    render "index.json.jbuilder"
  end

  def show
    @villain = Villain.find(params[:id])
    render "show.json.jbuilder"
  end

  def create
    @villain = Villain.new(name: params[:name],
                           powers: params[:powers],
                           enemy: params[:enemy]
                           )
    @villain.save
    render "show.json.jbuilder"
  end

  def update
    @villain = Villain.find(params[:id])

    @villain.name = params[:name] || @villain.name
    @villain.powers = params[:powers] || @villain.powers
    @villain.enemy = params[:enemy] || @villain.enemy

    @villain.save
    render "show.json.jbuilder"
  end

  def destroy
    @villain = Villain.find(params[:id])
    @villain.destroy
    render json: {message: "Element successfully destroyed."}
  end
end
