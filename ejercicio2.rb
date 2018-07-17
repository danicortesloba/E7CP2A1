nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]
# Extraer todos los elementos que excedan mas de 5 caracteres utilizando
# el método *.select*.
nombres_largos = nombres.select {|nombre| nombre.length > 5}
print nombres_largos
puts " "
# Utilizando *.map* crear una arreglo con los nombres en minúscula.
nombres_minuscula = nombres.map { |ele| ele.downcase}
print nombres_minuscula
puts " "
# Utilizando *.select* para crear un arreglo con todos los nombres que empiecen
#  con P.
nombres_p = nombres.select {|nombre| nombre.include? "P"}
print nombres_p
puts " "
#Utilizando *.map* crear un arreglo único con la cantidad de letras que tiene
#  cada nombre.
nombres_letras = nombres.map {|nombre| nombre.length}
print nombres_letras
puts " "
# Utilizando *.map* y *.gsub* eliminar las vocales de todos los nombres.
nombres_consonantes = nombres.map {|nombre| nombre.gsub(/[aeiouAEIOU]/, " ")}
print nombres_consonantes
