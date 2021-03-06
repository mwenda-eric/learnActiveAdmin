ActiveAdmin.register Book do
  index do
    column "Book Name ", :name
    column :author
    column :genre
    column :price do |book|
      number_to_currency book.price
    end
    # actions
  end
filter :name
filter :author
filter :genre
filter :price

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
