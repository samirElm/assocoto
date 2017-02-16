ActiveAdmin.register Volunteer do
  permit_params :first_name, :last_name, :email, :mobile_phone, :address
end
