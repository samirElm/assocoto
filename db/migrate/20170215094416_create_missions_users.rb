class CreateMissionsUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :missions_users do |t|
      t.references :mission, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
