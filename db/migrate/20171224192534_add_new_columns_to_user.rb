class AddNewColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :leader_chosen, :boolean
    add_reference :users, :candidate, foreign_key: true
    add_column :users, :last_candidate_id, :integer
    add_column :users, :eliminated, :text
  end
end
