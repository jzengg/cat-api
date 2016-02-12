class CatsController < ApplicationController
  def create

  end

  def show

  end

  private
  def cat_params
    params.require(:cat).permit(:name, :owner_id)
  end
end
