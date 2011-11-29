Spree::LineItem.class_eval do

  has_many :digital_links

  after_create :create_digital_links, :if => :digital?

  # Is this item digital?
  def digital?
    variant.digital?
  end

  def reset_digital_links!
    if digital?
      create_digital_links
    end
  end

  private

  # Create the download link for this item if it is digital.
  def create_digital_links
    digital_links.delete_all
    self.quantity.times do
      digital_links.create!(:digital => variant.digital)
    end
  end

end
