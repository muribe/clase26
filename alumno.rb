class Alumno
    attr_accessor :avg, :nombre
    def initialize(nombre)
        @nombre = nombre        
        @notas = Array.new(5) { |i| (0..10).to_a.sample }
        @avg = @notas.inject{ |sum, el| sum + el }.to_f / @notas.size
     end
end

pedro = Alumno.new("Pedro")  
juan = Alumno.new("Juan")  
pepito = Alumno.new("Pepito")  
jose = Alumno.new("Jose") 

avg_curso = ((pedro.avg + juan.avg + pepito.avg + jose.avg) / 4).round(2)

puts "El promedio del curso es: #{avg_curso}"
nombre_mayor = ObjectSpace.each_object.select{|alumno| alumno.class == Alumno}.max_by{|alumno| alumno.avg}.nombre
puts "El alumno con el mejor promedio es: #{nombre_mayor}"

