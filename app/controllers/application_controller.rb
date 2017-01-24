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
    @reevoo_reviews = $reevoomark_client.fetch(@trkref, @sku)
  end

  private

  def load_variables
    @trkref = 'MAZ'
    @sku = 'series:mazda3'
  end
end
