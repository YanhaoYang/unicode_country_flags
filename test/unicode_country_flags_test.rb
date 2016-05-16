require 'test_helper'

class UnicodeCountryFlagsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::UnicodeCountryFlags::VERSION
  end

  def test_it_returns_flag_unicodes_by_country_code
    assert_equal UnicodeCountryFlags.flag_of('cn'), "&#127464;&#127475;"
  end
end
