require "unicode_country_flags/country_flags"
module UnicodeCountryFlags
  module Helpers
    def unicode_country_flag_of(code)
      UnicodeCountryFlags::CountryFlags.flag_of(code).html_safe
    end
  end
end
