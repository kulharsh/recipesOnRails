class RecipesController < ApplicationController
  def index
  	@search_term =params[:search] || 'chocolate'
  	@recipesList = Recipe.for(@search_term)
  end
end
