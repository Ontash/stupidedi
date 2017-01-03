# frozen_string_literal: true
module Stupidedi
  module Refinements

    class ::Hash
      def defined_at?(x)
        include?(x)
      end

      def at(x)
        self[x]
      end
    end

  end
end
