ActiveAdmin.register Album do
  permit_params :title, :description, :image, :meta_title, :meta_description, :keywords, :url
  
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end

  form do |f|
    f.inputs do
      f.input :title
      f.input :description, :as => :ckeditor, :input_html => { :ckeditor => {:toolbar => 'Full'} }
      f.input :image
      f.input :meta_title
      f.input :meta_description
      f.input :keywords
      f.input :url
    end
    f.button "Save"
  end

end
