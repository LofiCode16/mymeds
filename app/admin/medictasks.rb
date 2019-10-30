ActiveAdmin.register Medictask do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :content, :date, :done, :user_id, :medic_id, :member_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :content, :date, :done, :user_id, :medic_id, :member_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  index do
    column :id
    column :title
    column :date
    column :user_id
    column :done    
    column :created_at
    actions
  end

  form do |f|
    inputs 'Agregar nueva cita' do
    input :title
    input :content
    input :date
    input :user_id
  end
  actions
end

permit_params :title, :content, :date, :user_id


end
