class CreateMerchandises < ActiveRecord::Migration[6.0]
  def change
    create_table :merchandises do |t|
      t.integer    :category_id,     null: false
      t.integer    :condition_id,    null: false
      t.integer    :load_id,         null: false
      t.integer    :area_id,         null: false
      t.integer    :shipping_day_id, null: false
      t.timestamps
    end
  end
end
