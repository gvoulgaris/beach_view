ActiveAdmin.register Beach do

 permit_params :beach_name, :location, :weather, :sunset, :tides, :wave_height, :entrance_fee, :umbrella_fee, :terrain, :terrain_color, :water_type, :shark_attacks, :island_id

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
