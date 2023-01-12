class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = set_flat
  end

  def new
  end

  def create
  end

  def destroy
  end

  private

  def set_flat
    Flat.find(params[:id])
  end

end
