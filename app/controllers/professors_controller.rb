class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all
  end

  def show
    set_professor
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.create(professor_params)
    redirect_to (@professor)
  end

  def edit
    set_professor
  end


  def update
    set_professor
    @professor.update(professor_params)
    redirect_to (@professor)
  end



  private
  
  def professor_params
      params.require(:professor).permit(:name, :department, :level)
   end

  def set_professor
    @professor = Professor.find(params[:id])
  end


end
