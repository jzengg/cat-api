class OwnersController < ApplicationController
  def create

  end

  def show

  end

  private
  def owner_params
    params.require(:owner).permit(:fname, :lname)
  end
end
