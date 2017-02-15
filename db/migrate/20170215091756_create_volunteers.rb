class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :first_name,   default: ""
      t.string :last_name,    default: ""
      t.string :email,        default: ""
      t.string :mobile_phone, default: ""
      t.string :address,      default: ""
    end
  end
end
