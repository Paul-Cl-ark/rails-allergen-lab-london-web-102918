class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update]

  def index
    if !params[:order].nil? && !params[:order][:descending].nil?
      @recipes = Recipe.sort_by_ingredient_number.reverse
    else
      @recipes = Recipe.sort_by_ingredient_number
    end
  end

  def show

  end

  def new
    @recipe = Recipe.new
    @users = User.all
    @ingredients = Ingredient.all
  end

  def create
    @recipe = Recipe.create(recipe_params)
    redirect_to recipe_path(@recipe)
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, ingredient_ids:[])
  end

end
