class LawsuitsController < ApplicationController

  before_action :set_lawsuit, only: [:show, :edit, :update]
  
  def index
    @lawsuits = Lawsuit.all
  end

  def show; end

  def new
    @lawsuit = Lawsuit.new
  end

  def create
    @lawsuit = Lawsuit.new(lawsuit_params)

    if @lawsuit.save
      redirect_to @lawsuit
    else
      render :new, status: :unprocessable_entity
    end
  end
  
  def edit; end
  
  def update
    if @lawsuit.update(lawsuit_params)
      redirect_to @lawsuit
    else
      render :edit
    end
  end

  def destroy
    @lawsuit = Lawsuit.find(params[:id])
    @lawsuit.destroy

    redirect_to root_path, status: :see_other
  end

  private

  def set_lawsuit
    @lawsuit = Lawsuit.find(params[:id])
  end

  def lawsuit_params
    params.require(:lawsuit).permit(:lawsuit_date, :lawsuit_number, :lawsuit_complainant, :lawsuit_defendant, :lawsuit_case_description)
  end
  
end
