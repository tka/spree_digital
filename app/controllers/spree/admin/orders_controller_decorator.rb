Spree::Admin::OrdersController.class_eval do 
  before_filter :renew_order_downlink, :only => [:resend]

  private
  def renew_order_downlink
    @order.line_items.each{|i| i.reset_digital_links! }
  end

end
