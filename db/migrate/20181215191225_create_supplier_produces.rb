class CreateSupplierProduces < ActiveRecord::Migration[5.2]
  def change
    create_table :supplier_produces do |t|
      t.references :supplier, foreign_key: true
      t.references :produce, foreign_key: true
      t.string :season
    end
  end
end
