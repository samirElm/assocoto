ActiveAdmin.register User do
  permit_params :first_name

  index do
    selectable_column
    column :id
    column :first_name
    column :email
    column :created_at
    column :admin
    actions
  end

  form do |f|
    f.inputs "Identité" do
      f.input :first_name
      f.input :email
    end
    f.actions
  end
end
