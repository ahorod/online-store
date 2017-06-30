class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :cost
      t.string :origin
      t.timestamps
    end
  end
end
