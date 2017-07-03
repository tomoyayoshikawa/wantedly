class OffersController < ApplicationController
  
  def index
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    if @offer.save
      redirect_to offers_path
    end
  end

  def offer_params
    params.require(:offer).permit(:title, :image, :job, :what, :why, :how, :thing).merge(company_id: current_company.id)
  end
end
