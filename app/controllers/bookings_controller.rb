class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    if current_user.teacher?
      # Si el usuario es un profesor, obtenemos las reservas pendientes como profesor
      @pendings = Booking.joins(:teaching_language_session)
                         .where(teaching_language_sessions: { user_id: current_user.id })
                         .where(bookings: { booking_status: :pending })

      # Y también mostramos las reservas aprobadas que el profesor haya hecho
      @bookings = current_user.bookings.where(booking_status: :approved)
    else
      # Si el usuario es un estudiante, obtenemos las reservas aprobadas para ese estudiante
      @bookings = Booking.where(user_id: current_user, booking_status: :approved)
      @pendings = Booking.none  # No hay reservas pendientes para estudiantes en este caso
    end
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
    @booking.user_id = current_user.id
    # teaching = TeachingLanguageSession.find(params[:teaching_language_session_id])
    # @booking.teaching_language_session_id = teaching


    if @booking.save!
      redirect_to bookings_path
    else
    render :new, status: :unprocessable_entity
    end
  end

  def edit
  end


  def update_status
    @booking = Booking.find(params[:id])
    status = params[:status]

    if status == 'approved'
      @booking.update(booking_status: 'approved')
    elsif status == 'rejected'
      @booking.destroy
    end

    redirect_to root_path, notice: 'Estado de reserva actualizado con éxito.'
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
    params.require(:booking).permit(:date, :time_in, :teacher_name, :teaching_language_session_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to bookings_path, alert: 'La reserva no fue encontrada.'
  end

end
