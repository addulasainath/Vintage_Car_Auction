ActiveAdmin.register Auction do
  permit_params :date, :minimum_amount, :maximum_amount, :bid_type_id, :car_color_id, :car_model_id, :car_type_id, :image

  form do |form|
    form.inputs do
      form.input :date
      form.input :minimum_amount
      form.input :maximum_amount
      form.input :image, as: :file
      form.input :bid_type_id, as: :select, collection: BidType.all
      form.input :car_color_id, as: :select, collection: CarColor.all
      form.input :car_model_id, as: :select, collection: CarModel.all
      form.input :car_type_id, as: :select, collection: CarType.all
    end
    form.actions
  end

  show do
    attributes_table do
      row :car_mode
      row :car_color
      row :car_type
      row :bid_type
      row :date
      row :minimum_amount
      row :maximum_amount
      row :image do |object|
        image_tag object.image, size: "200x200"
      end
    end
  end

  index do
    selectable_column
    column :car_model
    column :car_type
    column :car_color
    column :bid_type
    column :date
    column :minimum_amount
    column :maximum_amount
    actions
  end
end