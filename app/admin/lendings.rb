ActiveAdmin.register Lending do
  # Specify parameters which should be permitted for assignment
  permit_params :amount, :interest_rate, :state, :user_id

  # or consider:
  #
  # permit_params do
  #   permitted = [:amount, :interest_rate, :state, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  # For security, limit the actions that should be available
  actions :all, :except=> [:new,:create,:destroy]

  # Add or remove filters to toggle their visibility
  filter :amount
  filter :interest_rate
  filter :state
  filter :user_id
  filter :created_at
  filter :updated_at

  # Add or remove columns to toggle their visibility in the index action
  index do
    selectable_column
    id_column
    column :amount
    column :interest_rate
    column :state
    column :user_id
    column :created_at
    column :updated_at
    actions
  end

  # Add or remove rows to toggle their visibility in the show action
  show do
    attributes_table_for(resource) do
      row :id
      row :amount
      row :interest_rate
      row :state
      row :user
      row :created_at
      row :updated_at
    end
  end

  # Add or remove fields to toggle their visibility in the form
  form do |f|
    f.semantic_errors(*f.object.errors.attribute_names)
    f.inputs do
      f.input :amount
      f.input :interest_rate
      f.input :state
      f.input :user
    end
    f.actions
  end
end
