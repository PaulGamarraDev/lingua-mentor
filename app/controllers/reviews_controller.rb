class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
      @recipient = Recipient.find(params[:id])
      @review = Review.new
    end

  def create
    @recipient = Recipient.find(pararms[:recipient_id])
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
  end

  def index
    
  end


  private

  def review_params
    pararms.require(:review).permit(:rating, :comment)
  end
end
