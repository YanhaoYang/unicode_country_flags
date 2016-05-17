require 'test_helper'

class DummyTestClass
  include UnicodeCountryFlags::Helpers
end

class String
  def html_safe
    self
  end
end

class HelpersTest < Minitest::Test
  def test_it_returns_flag_unicodes_by_country_code
    assert_equal DummyTestClass.new.unicode_country_flag_of('cn'), "&#127464;&#127475;"
  end

  def test_it_returns_nil_for_invalid_country_code
    assert_nil DummyTestClass.new.unicode_country_flag_of('12')
  end
end
