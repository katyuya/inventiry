class ProductionsController < ApplicationController
  def new
    @production= Production.new
  end

  def create
    @production = Production.new(invento_params)
    if @production.save
      redirect_to productions_path
    else
      render :new
    end

  end

  def index
    @productions = Production.all
  end

  def edit
    @production = Production.find(params[:id])
  end

  def update
    @production = Production.find(params[:id])
    if @production.update(invento_params)
      redirect_to productions_path
    else
      render :edit
    end
  end

  private

  def invento_params
    params.require(:production).permit(:ordernumber, :customer, :product, :ruler, :platform, :progress)
  end
end
