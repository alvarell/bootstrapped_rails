ActiveAdmin.register User do
  
  index do 
    column :id do |user|
      link_to user.id, admin_user_path(user)
    end
    column :email
    column :sign_in_count
    column "Joined at" , :created_at
  end
end
