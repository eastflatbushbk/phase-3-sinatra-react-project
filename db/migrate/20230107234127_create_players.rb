class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.string :status
      t.belongs_to :team, foreign_key: true
     end
  end
end
