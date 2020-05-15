class Letter

    attr_reader :value, :position, :found

    def initialize(value, position)
        @value = value
        @position = position
        @found = false
    end

    def is_equal(letter)
        letter == @value ? true : false
    end

    def is_found
        @found == true ? true : false
    end

    def found_me
        @found = true
    end

end