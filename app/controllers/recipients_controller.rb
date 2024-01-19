class RecipientsController < ApplicationController
  def show
    @recipient = Recipient.find(params[:id])
    @reviews = @recipient.reviews
  end
end
