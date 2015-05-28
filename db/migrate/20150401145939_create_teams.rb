class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :uniform_color
      t.belongs_to :user
      t.belongs_to :league
    end
  end
end
