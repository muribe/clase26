class Carta
    attr_accessor :pinta, :number
    def initialize(pinta,number)
        @pinta = pinta
        @number = number
    end
    def show
        "#{@number} #{@pinta}\n"
    end
end

pinta =["corazon","picas","diamantes","trébol"]
number = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

carta = Carta.new(pinta.sample,number.sample)
puts carta.show