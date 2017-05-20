class MiPerro
    def initialize(name)
        @name = name
    end
    def speak
        puts "#{@name} dice Arf"
    end
end

dog = MiPerro.new("Firulais")
dog.speak