class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
  end

  def new
    @booking = Booking.new
    @teacher_name = params[:teacher_name]
    puts "Teacher Name: #{@teacher_name}"
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.teacher_name = params[:teacher_name]
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to bookings_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private


  def booking_params
    params.require(:booking).permit(:date, :time_in, :teaching_language_session_id, :user_id, :teacher_name)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to bookings_path, alert: 'La reserva no fue encontrada.'
  end

end
