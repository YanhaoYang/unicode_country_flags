module UnicodeCountryFlags
  module CountryFlags
    class << self
      def flag_of(code)
        code = code.to_s.downcase
        return unless code.size == 2
        chars = code.chars.map { |c| unicodes[c] }
        if chars.any?(&:nil?)
          nil
        else
          chars.join
        end
      end

      def unicodes
        @unicodes ||= Hash[ ('a'..'z').zip (0x1F1E6..0x1F1FF).map { |i| "&##{i};"} ]
      end
    end
  end
end
