class DoctorsController < ApplicationController
  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
    # @doctor.ingredients.build(name: nil)
    # @doctor.ingredients.build(name: nil)
  end

  def create
    doctor = Doctor.create(doctor_params)
  end

  private

  def doctor_params
    params.require(:doctor).permit()
  end
end
