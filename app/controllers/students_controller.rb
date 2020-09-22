class StudentsController < ApplicationController
    def index
        @students = Student.all
      end
    
      def show
        set_student
      end
    
      def edit
        set_student
      end
    
      def update
        set_student
        @student.update(student_params)
        redirect_to (@student)
      end
    
      def new
        @student = Student.new
      end
    
      def create
        @student = Student.create(student_params)
        redirect_to (@student)
      end
    
      def edit
        set_student
      end
    
    
      def update
        set_student
        @student.update(student_params)
        redirect_to (@student)
      end
    
       
      def destroy
        set_student
        @student.destroy
        redirect_to students_path (@students)
      end
    
    
    
      private
      
      def student_params
          params.require(:student).permit(:first_name, :last_name, :major, :email, :identification)
       end
    
      def set_student
        @student = Student.find(params[:id])
      end
end
