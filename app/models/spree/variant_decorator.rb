Spree::Variant.class_eval do
  has_many :vendor_links, :class_name => 'Spree::VendorLink'

end