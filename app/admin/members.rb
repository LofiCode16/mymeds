ActiveAdmin.register Member do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :birth_date, :genre, :user_id, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :birth_date, :genre, :user_id, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  index do
    column :id
    column :name
    column :user_id
    column :created_at
    actions
  end

  form do |f|
    inputs 'Agregar nuevo miembro' do
      input :name
      input :user_id
    end
    actions
  end

  permit_params :name, :user_id

end
