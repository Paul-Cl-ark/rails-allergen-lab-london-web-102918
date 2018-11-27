class IngredientsController < ApplicationController

  before_action :set_ingredient, only: [:show, :edit, :update, :create]

  def index
    @ordered_ingredients = Ingredient.all.sort_by{|i| i.users.length}.reverse
  end

  def show

  end

  def new
    @ingredient = Ingredient.new
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end

end
