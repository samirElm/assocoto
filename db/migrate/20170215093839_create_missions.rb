class CreateMissions < ActiveRecord::Migration[5.0]
  def change
    create_table :missions do |t|
      t.string :title,     default: ""
      t.text :description, default: ""
      t.datetime :deadline
      t.references :project, foreign_key: true
    end
  end
end
