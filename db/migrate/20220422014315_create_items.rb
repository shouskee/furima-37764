class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :product_name,    null: false
      t.text       :explanation,     null: false
      t.integer    :category_id,     null: false
      t.integer    :condition_id,    null: false
      t.integer    :load_id,         null: false
      t.integer    :area_id,         null: false
      t.integer    :shipping_day_id, null: false
      t.integer    :selling_price,   null: false
      t.references :user,            null: false, foreign_key: true
      t.timestamps
    end
  end
end