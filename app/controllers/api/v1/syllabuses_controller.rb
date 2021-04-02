class Api::V1::SyllabusesController < ApplicationController
  def index
    @ayllabuses = Syllabus.all
    render json: @syllabuses
  end

  def create
    syllabus = Syllabus.new(syllabus_params)
    if syllabus.save
        render json: syllabus, status: :accepted
    else
      render json: { errors: syllabus.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def syllabus_params
    require(:syllabus).permit(:title, :description, :image_url, :category_id)
    params.permit()
  end

end
