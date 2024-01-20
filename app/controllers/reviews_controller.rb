class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @recipient = User.find(params[:perfil_id])
      @review = Review.new
    end

  def create
    @recipient = User.find(pararms[:recipient_id])
    @review = @recipient.reviews.build(review_params)
    @reviews.user = current_user

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
    pararms.require(:review).permit(:rating, :comment)
  end
end
