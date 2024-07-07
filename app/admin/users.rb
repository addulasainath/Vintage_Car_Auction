ActiveAdmin.register User do
  permit_params :email, :name, :address, :phone_number, :password, :password_confirmation

  filter :email

  form do |form|
    form.inputs do
      form.input :name
      form.input :email
      form.input :phone_number
      form.input :address
      if form.object.new_record?
        form.input :password, required: true
        form.input :password_confirmation, required: true
      end
    end
    form.actions
  end

  show do
    attributes_table do
      row :name
      row :email
      row :phone_number
      row :address
    end
  end

  index do
    selectable_column
    column :name
    column :email
    column :phone_number
    column :address
    actions
  end
end