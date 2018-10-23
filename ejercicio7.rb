# Utilizando el mismo archivo del ejercicio anterior:
# La tienda desea generar un nuevo catálogo que no incluya el último precio
# correspondiente a cada producto debido a que ya no comercializa productos de talla
# XS.

# Se pide generar un método que reciba como argumento los datos del archivo
# catalogo.txt y luego imprima el nuevo catálogo solicitado en un archivo llamado
# nuevo_catalogo.txt

def create_file(products_list)
    file = File.open('nuevo_catalogo.txt', 'w')
    products_list.each do |product| 
        file.puts "#{product[0]}, #{product[1]}, #{product[2]}, #{product[3]}"
    end
    file.close
end     

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
    products_list << prod.chomp.split(', ')
end

create_file(products_list)
    

