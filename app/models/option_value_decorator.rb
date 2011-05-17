OptionValue.class_eval do
  validates_numericality_of :amount, :allow_nil => true
  
  after_update :adjust_variant_prices, :if => :amount_changed?

  def adjust_variant_prices
    variants.each do |v|
      if v.product
        v.update_attribute(:price, v.calculate_price)
      else
        v.destroy
      end
    end
  end
end