class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all
  end

  def show
    set_professor
  end

  def create
    @professor = Professor.create(params.require(:professor).permit(:name, :department, :level))
    redirect_to (@professor)
  end

  def new
    @professor = Professor.new
  end

  def update

  end



  private

  def set_professor
    @professor = Professor.find(params[:id])
  end
end
