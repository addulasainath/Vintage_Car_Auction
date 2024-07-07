ActiveAdmin.register CarColor do
  permit_params :color_name, :car_type_id

  form do |form|
    form.inputs do
      form.input :car_type_id, as: :select, collection: CarType.all
      form.input :color_name, as: :string
    end
    form.actions
  end

end