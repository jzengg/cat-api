class Api::OwnersController < ApplicationController

  def create
    @owner = Owner.create(owner_params)
  end

  def show
    @owner = Owner.find(params[:id])
    render json: @owner, root: false
  end

  private
  def owner_params
    params.require(:owner).permit(:fname, :lname)
  end
end
