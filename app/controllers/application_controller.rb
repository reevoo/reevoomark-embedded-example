class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :load_variables

  def index
  end

  def tabbed_embedded
  end

  def product_reviews
  end

  def conversations
  end

  def customer_experience
  end

  def customer_experience_v1
  end

  def badges
  end

  def old_product_reviews
    @response = $reevoomark_embedable_reviews.fetch(@trkref, @sku)
  end

  def old_customer_experience
    @response = $reevoomark_embeddable_customer_experience_reviews.fetch(@trkref, @sku)
  end

  def old_conversations
    @response = $reevoomark_embeddable_conversations.fetch(@trkref, @sku)
  end

  private

  def load_variables
    @domain  =  params[:domain] || 'http://0.0.0.0:3001'
    @trkref = params[:trkref]
    @sku = params[:sku]
    @page = params[:page] || 1


    @manufacturer = params[:manufacturer]
    @model = params[:model]
    @model_year = params[:model_year]
    @variant = params[:variant]
    @per_page = params[:per_page] || 8
    @trkref = params[:trkref]
    @used = params[:used]
    @tab = params[:tab] || ''
    @stylesheet_version = params[:stylesheet_version] || '1.5'
    @locale = params[:locale] || 'en-GB'
  end
end
