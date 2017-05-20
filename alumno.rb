class Alumno
    # attr_accessor :alumno
    def initialize()
        @alumno = Array.new()
        @avg_alumnos = Array.new()
        4.times do |i|
            @alumno[i] = Array.new(5) { |i2| (i2 > 0 ) ? (0..10).to_a.sample : "alumno#{i+1}" }
        end
    end
    def avg_curso
        avg_curso = 0
        @alumno.each_with_index do |array,i|
            sum = 0
            array.each_with_index do |v,i| 
                sum += v if v.to_i > 0   
            end
            @avg_alumnos.push(sum.to_f/4)
            # puts "#{@avg_alumnos[i]}\n"
            avg_curso += @avg_alumnos[i]
        end
        avg_curso/4
    end
    def max_avg
        @alumno[@avg_alumnos.index(@avg_alumnos.max)][0]
    end
end

alumno = Alumno.new
puts "El promedio del curso es: #{alumno.avg_curso.round(2)}\n"
puts "El alumno con el promedio mas alto es: #{alumno.max_avg}"


