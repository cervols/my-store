class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string  :name
      t.string  :description
      t.float   :price
      t.boolean :in_stock

      t.timestamps
    end
  end
end
