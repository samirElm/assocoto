class CreateMilestones < ActiveRecord::Migration[5.0]
  def change
    create_table :milestones do |t|
      t.datetime :date
      t.string :title, default: ""
      t.references :mission, foreign_key: true
    end
  end
end
