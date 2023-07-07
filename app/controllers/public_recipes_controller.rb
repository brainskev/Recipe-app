class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.all.where(public: true)
    # @current_user = current_user
    # @foods = current_user.recipes.includes!(:foods).map(&:foods).flatten.uniq
    # @total_price = @foods.map { |ingredient| ingredient.price * ingredient.total_quantity_recipes }.sum
  end
end
