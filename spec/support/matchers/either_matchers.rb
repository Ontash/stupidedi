module EitherMatchers

  def be_defined
    BeDefined.new
  end

  class BeDefined
    def matches?(either)
      @either = either
      either.defined?
    end

    def failure_message
      "expected Either.success, got #{@either.inspect}"
    end

    def failure_message_when_negated
      "expected Either.failure, got #{@either.inspect}"
    end

    def description
      "be defined"
    end
  end

  def be_success(value)
    BeSuccess.new(value)
  end

  class BeSuccess
    def initialize(value)
      @value = value
    end

    def matches?(either)
      @either = either
      either.select{|x| x == @value}.defined?
    end

    def failure_message
      "expected Either.success(#{@value.inspect}), got #{@either.inspect}"
    end

    def failure_message_when_negated
      "expected non-Either.success(#{@value.inspect}) got #{@either.inspect}"
    end

    def description
      "be defined"
    end
  end

end
