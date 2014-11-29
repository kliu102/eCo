class CreateSpreeVendorLinks < ActiveRecord::Migration
  def up
    create_table :spree_vendor_links do |t|
      t.string   "name"
      t.string   "link",          :limit => 128
      t.integer  "variant_id"
      t.float    "price"

      t.timestamps
    end
    add_index :spree_vendor_links, :variant_id
  end

  def down
    drop_table :spree_vendor_links
  end
end
