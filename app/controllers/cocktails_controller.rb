class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:create, :show]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new(set_cocktail)
  end

  def create
    @cocktail = Cocktail.new(cocktail)
    if @cocktail.save
      redirect_to @cocktail_path
    else
      render :new
    end
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
