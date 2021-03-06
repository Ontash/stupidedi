# frozen_string_literal: true
module Stupidedi
  include Refinements

  module Versions
    module FunctionalGroups
      module ThirtyTen

        #
        # @see X222.pdf A.1.3.8 Condition Designator
        #
        module ElementReqs
          Mandatory  = Schema::ElementReq.new(true,  false, "M")
          Optional   = Schema::ElementReq.new(false, false, "O")
          Relational = Schema::ElementReq.new(false, false, "X")
          # Flexible   = Schema::ElementReq.new(false, false, "F")
        end

      end
    end
  end
end
