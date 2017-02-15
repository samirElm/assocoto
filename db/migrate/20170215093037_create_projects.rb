class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name, default: ""
      t.references :department, foreign_key: true
    end
  end
end
