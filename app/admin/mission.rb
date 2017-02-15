ActiveAdmin.register Mission do
  permit_params :title, :description, :deadline, :project_id
end
