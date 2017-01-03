# frozen_string_literal: true

module Stupidedi
  module Refinements

    class ::Time
      # @return [Time]
      def to_time
        self
      end
    end

    class << Time
      public :parse
    end

    class ::String
      def to_time
        Time.parse(self)
      end
    end

  end
end
