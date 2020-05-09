class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.brand :references
      t.category :references

      t.timestamps
    end
  end
end
