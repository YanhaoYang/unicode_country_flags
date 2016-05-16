module UnicodeCountryFlags
  module CountryFlags
    class << self
      def flag_of(code)
        code = code.to_s.downcase
        return unless code.size == 2
        code.chars.map { |c| unicodes[c] }.join("")
      end

      def unicodes
        @unicodes ||= Hash[ ('a'..'z').zip (0x1F1E6..0x1F1FF).map { |i| "&##{i};"} ]
      end
    end
  end
end
