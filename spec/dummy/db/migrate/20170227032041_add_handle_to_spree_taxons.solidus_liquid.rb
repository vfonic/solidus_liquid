# This migration comes from solidus_liquid (originally 20170223064323)
# This migration comes from solidus_liquid (originally 20170211111359)
class AddHandleToSpreeTaxons < ActiveRecord::Migration[5.0]
  def change
    add_column :spree_taxons, :slug, :string
    add_index :spree_taxons, :slug
  end
end
