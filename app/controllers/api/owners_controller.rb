class Api::OwnersController < ApplicationController

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      render json: @owner, status: :created
    else
      render json: { error: @owner.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @owner = Owner.find_by(id: params[:id])
    if @owner
      render json: @owner, root: false
    else
      render json: { error: "Could not find an owner with id #{params[:id]}" }, status: 404
    end
  end

  private
  def owner_params
    params.require(:owner).permit(:fname, :lname)
  end
end
