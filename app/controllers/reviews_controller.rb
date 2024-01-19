class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def create
    @recipe = Recipe.find(pararms[:recipe_id])
    @recipe = @recipe.reviews.build(review_params)
    @reviews.user =current_user

    if @review.save
      redirect_to @recipe, notice: '¡Comentario creado correctamente!'
    else
      render 'recipe/show'
    end
  end

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @review = Review.new
  end

  private

  def review_params
    pararms.require(:review).permit(:rating, :comment)
  end
end
