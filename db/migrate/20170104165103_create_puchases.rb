class CreatePuchases < ActiveRecord::Migration[5.0]
  def change
    create_table :puchases do |t|
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
