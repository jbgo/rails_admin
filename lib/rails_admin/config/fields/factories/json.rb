require 'rails_admin/config/fields'
require 'rails_admin/config/fields/types/json'

# Register a custom field factory for JSON properties.
#
# @see RailsAdmin::Config::Fields::Types::Json
RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:type] == :json
    fields << RailsAdmin::Config::Fields::Types::Json.new(parent, properties[:name], properties)
    true
  else
    false
  end
end
