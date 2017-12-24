class CreateParties < ActiveRecord::Migration[5.1]
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :score
      t.string :logo

      t.timestamps
    end
  end
end
