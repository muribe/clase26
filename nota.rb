class Alumno
    attr_accessor :nombre,:notas    
    def initialize()
        @notas = []
        @nombre = "Humberto"
    end
end

alumno = Alumno.new
alumno.notas.push(2)
alumno.notas.push(4)
puts alumno.nombre
print alumno.notas