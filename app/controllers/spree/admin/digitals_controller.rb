module Spree
  module Admin
    class Spree::Admin::DigitalsController < ResourceController
      belongs_to "spree/product", :find_by => :permalink

    end
  end
end
