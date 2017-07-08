class UsersController < ApplicationController

  def show
    @offers = current_user.offers.order("created_at DESC").each do
    @applies = Apply.where(user_id: current_user.id)
    end
  end

  private
  def user_params
    params.reqire(:user).permit(:user_id, :campany_id)
  end

end
