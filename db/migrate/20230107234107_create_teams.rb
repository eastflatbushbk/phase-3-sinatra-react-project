class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :neighborhood
      t.string :homeground
      t.integer :standings
    end
  end
end
