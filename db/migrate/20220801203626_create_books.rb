class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :price
      t.text :description
      t.references :admin
      
      t.timestamps
    end
  end
end
