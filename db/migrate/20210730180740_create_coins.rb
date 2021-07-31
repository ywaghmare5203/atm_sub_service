class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
