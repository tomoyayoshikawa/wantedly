class AppliesController < ApplicationController

  def create
    @offer = Offer.find(params[:offer_id])
    @apply = Apply.new(offer_id: apply_params[:offer_id], user_id: current_user.id)
    if @apply.save
      redirect_to root_path, notice: '応募が完了しました'
    else
      flash.now[:alert] = '応募に失敗しました'
      redirect_to root_path
    end
  end

  private
    def apply_params
      params.permit(:user_id, :offer_id)
    end

end
