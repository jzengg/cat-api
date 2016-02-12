class Api::CatsController < ApplicationController
  def create
    @cat = Cat.create(cat_params)
  end

  def show
    @cat = Cat.find(params[:id])
    render json: @cat, root: false
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :owner_id)
  end
end
