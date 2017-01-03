# frozen_string_literal: true

module Stupidedi
  module Refinements

    class ::Time
      def to_date
        Date.civil(year, month, day)
      end
    end

    class ::String
      def to_date
        Date.parse(self)
      end
    end

    class ::Date
      def to_date
        self
      end
    end

    class << Date
      public :parse
    end

  end
end
