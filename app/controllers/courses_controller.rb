class CoursesController < ApplicationController

    def new 
        @course = Course.new
    end

    def create
        @course = Course.new(params.require(:course).permit(:name, :location, :professor_id, :student_id))
        if @course.save
            redirect_to @course
        else
            render :new
        end 
    end

    private
end
