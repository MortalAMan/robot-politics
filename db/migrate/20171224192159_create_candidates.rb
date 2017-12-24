class CreateCandidates < ActiveRecord::Migration[5.1]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :img_url
      t.string :slogan
      t.belongs_to :party, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
