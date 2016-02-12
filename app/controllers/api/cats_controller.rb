class Api::CatsController < ApplicationController
  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      render json: @cat, status: :created
    else
      render json: { error: @cat.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    if @cat
      render json: @cat, root: false
    else
      render json: { error: "Could not find a cat with id #{params[:id]}" }, status: 404
    end
  end

  private
  def cat_params
    params.require(:cat).permit(:name, :owner_id)
  end
end
