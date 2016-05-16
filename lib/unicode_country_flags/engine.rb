require "unicode_country_flags/Helpers"

module UnicodeCountryFlags
  class Engine < ::Rails::Engine
    initializer 'unicode_country_flags.initialize' do
      ActiveSupport.on_load(:action_view) do
        include UnicodeCountryFlags::Helpers
      end
    end
  end
end
