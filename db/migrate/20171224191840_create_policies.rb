class CreatePolicies < ActiveRecord::Migration[5.1]
  def change
    create_table :policies do |t|
      t.string :name
      t.integer :score

      t.timestamps
    end
  end
end
