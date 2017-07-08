class CompaniesController < ApplicationController

  def show
    @offers = current_company.offers.order("created_at DESC").each do
    @applies = Apply.where(user_id: current_company.id)
    end
  end

  private
  def user_params
    params.reqire(:user).permit(:user_id, :campany_id)
  end

end
