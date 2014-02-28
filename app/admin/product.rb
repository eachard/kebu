ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #


  form :partial => "form"


  # unscope the collection to see all products because by default the collection is scoped to available.
  controller do
    def scoped_collection
      Product.unscoped
    end
  end

  # displayed by default in the admin page
  index do
    selectable_column
    id_column
    column :title
    column :available
    column :price
    actions
  end

  # permit params to happen the objects in the database
  permit_params :title, :description, :price, :available, :picture

  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
