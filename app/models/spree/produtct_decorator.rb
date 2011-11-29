module Spree
  Product.class_eval do

    has_many :digitals, :through => :variants
  end
end
