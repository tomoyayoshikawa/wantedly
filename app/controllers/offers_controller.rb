class OffersController < ApplicationController

  def index
    @offers = Offer.all.order("created_at DESC")
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path, notice: '投稿が完了しました'
    else
      flash.now[:alert] = '投稿に失敗しました。必須項目を入力の上、投稿してください。'
      render :new
    end
  end

  def show
    @offer = Offer.find(params[:id])
    if user_signed_in?
      @user = current_user.id
    elsif company_signed_in?
      @company = current_company.id
    end
  end

  def offer_params
    params.require(:offer).permit(:title, :image, :job, :what, :why, :how, :thing).merge(company_id: current_company.id)
  end
end
