# Crea una clase llamada Dog cuyo constructor reciba como argumento un hash con la
# siguiente estructura:
# propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
#
# Instanciar un nuevo perro a partir de las propiedades contenidas en el hash. Luego
# generar un método llamado ladrar que, mediante interpolación, imprima "Beethoven
# está ladrando!"


propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}

class Dog
    attr_accessor :propiedades
    def initialize(propiedades)
        @propiedades = propiedades
    end
    def ladrar
        puts "#{@propiedades[:nombre]} está ladrando!"
    end 
end 


beto = Dog.new(propiedades)

beto.ladrar



