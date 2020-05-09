class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :brand_name
      t.string :price_range

      t.timestamps
    end
  end
end
