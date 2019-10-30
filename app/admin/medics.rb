ActiveAdmin.register Medic do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :rut, :name, :speciality, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:rut, :name, :speciality, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    column :id
    column :name
    column :speciality
    column :user_id
    column :created_at
    actions
  end

  form do |f|
    inputs 'Agregar nuevo usuario' do
    input :rut
    input :name
    input :speciality
    input :user_id
  end
  actions
end

permit_params :rut, :name, :speciality, :user_id

end
