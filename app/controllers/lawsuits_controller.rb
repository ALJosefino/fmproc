class LawsuitsController < ApplicationController
  def index
    @lawsuits = Lawsuit.all
  end

  def show
    @lawsuit = Lawsuit.find(params[:id])
  end

  def new
    @lawsuit = Lawsuit.new
  end

  def create
    @lawsuit = Lawsuit.new(lawsuit_params)

    if @lawsuit.save
      redirect_to @lawsuit
    else
      render :new
    end
  end
  
  def edit
    @lawsuit = Lawsuit.find(params[:id])
  end
  
  def update
    @lawsuit = Lawsuit.find(params[:id])
    
    if @lawsuit.update(lawsuit_params)
      redirect_to @lawsuit
    else
      render :edit
    end
  
  end

  private

  def lawsuit_params
    params.require(:lawsuit).permit(:lawsuit_date, :lawsuit_number, :lawsuit_complainant, :lawsuit_defendant, :lawsuit_case_description)
  end
end
