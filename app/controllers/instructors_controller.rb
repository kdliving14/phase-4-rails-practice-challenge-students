class InstructorsController < ApplicationController

    def index
        render json: Instructor.all 
    end

    def show
        instructor = Instructor.find(params[:id])
        render json: instructor
    end

    def create
        instructor = Instructor.create!(i_params)
        render json: instructor
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update!(i_params)
        render json: instructor
    end

    def destroy
        instructor = Instructor.find(params[:id])
        instructor.destroy
        head :no_content
    end

    private

    def i_params
        params.permit(:name)
    end
end
