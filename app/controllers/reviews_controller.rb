class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @teacher = User.find(params[:id])
    # @review = @recipient.reviews.new(review_params)
    @review = Review.new
    end

  def create
    @recipient = User.find(params[:user_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.recipient = @recipient

    if @review.save
      redirect_to @recipient, notice: '¡Comentario creado correctamente!'
    else
      render 'new'
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def index

  end


  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
