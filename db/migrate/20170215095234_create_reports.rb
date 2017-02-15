class CreateReports < ActiveRecord::Migration[5.0]
  def change
    create_table :reports do |t|
      t.datetime :date
      t.string :title,     default: ""
      t.text :description, default: ""
      t.references :mission, foreign_key: true
    end
  end
end
