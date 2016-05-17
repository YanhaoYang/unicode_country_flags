require 'test_helper'

class CountryFlagsTest < Minitest::Test
  def test_it_returns_flag_unicodes_by_country_code
    assert_equal UnicodeCountryFlags::CountryFlags.flag_of('cn'), "&#127464;&#127475;"
  end

  def test_it_returns_nil_for_invalid_country_code
    assert_nil UnicodeCountryFlags::CountryFlags.flag_of('12')
  end
end
