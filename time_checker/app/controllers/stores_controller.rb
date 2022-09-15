class StoresController < ApplicationController
  def show
    @store = Store.find(params[:id])
  end

  def index
    @stores = Store.all
  end

  def new
    @store = Store.new
  end

  def create
    @store = Store.new(params.require(:store).permit(:name, :address))
    if @store.save
      redirect_to @store
    else
      render 'new'
    end
  end

  def edit
    @store = Store.find(params[:id])
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(params.require(:store).permit(:name, :address))
      redirect_to @store
    else
      render 'edit'
    end
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end
end
