class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]

  def index
    @professors = Professor.all
  end

  def show
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new(professor_params)
    if @professor.save
      redirect_to (@professor)
    else
      render :new
    end
  end

  def update
    if @professor.update(professor_params)
    redirect_to (@professor)
    else 
      render :edit
    end
  end

  def edit
  end
   
  def destroy
    @professor.destroy
    redirect_to professors_path (@professors)
  end
  
  private
  
  def professor_params
      params.require(:professor).permit(:name, :department, :level)
   end

  def set_professor
    @professor = Professor.find(params[:id])
  end

end
