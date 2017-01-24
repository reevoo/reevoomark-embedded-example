class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :load_variables

  def index
  end

  def product_reviews

  end

  def conversations
  end

  def customer_experience
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
    @trkref = 'MAZ'
    @sku = 'series:mazda3'
  end
end
