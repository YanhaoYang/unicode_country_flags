require "unicode_country_flags/country_flags"
module UnicodeCountryFlags
  module Helpers
    def unicode_country_flag_of(code)
      flag = UnicodeCountryFlags::CountryFlags.flag_of(code)
      flag.html_safe if flag
    end
  end
end
