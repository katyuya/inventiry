class InventoriesController < ApplicationController
  def index
    @inventos = Invento.all
  end

  def new
    @invento = Invento.new
  end

  def create
    @invento = Invento.new(invento_params)
    if @inventory.save
      redirect_to inventory_path
    else
      render :new
    end

  end

  def edit
    @invento = Invento.find(params[:id])
  end

  def update
    @invento = Invento.find(params[:id])
    if @inventory.update(invento_params)
      redirect_to inventory_path
    else
      render :edit
    end
  end

  private

  def invento_params
    params.require(:invento).permit(:ordernumber, :customer, :product, :ruler, :platform, :progress)
  end

end
