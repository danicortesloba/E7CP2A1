#Menu

arreglo = []
def nuevo(array)
  hash_temp = Hash.new

  puts "¿Nombre?"
  nombre = gets.chomp
  puts "¿Edad?"
  edad = gets.chomp.to_i
  puts "¿Comuna?"
  comuna = gets.chomp
  puts "¿Género? (f o m)"
  genero = gets.chomp

  hash_temp = {firstname: nombre, age: edad, place: comuna, gender: genero}
  array.push(hash_temp)
end


def fix(array)
  puts "¿Cuál de estos quieres editar?"
  puts array
  place = gets.chomp.to_i
  puts "¿Nombre?"
  nombre = gets.chomp
  puts "¿Edad?"
  edad = gets.chomp.to_i
  puts "¿Comuna?"
  comuna = gets.chomp
  puts "¿Género? (f o m)"
  genero = gets.chomp

  hash_temp = {firstname: nombre, age: edad, place: comuna, gender: genero}
  array[place] = hash_temp
  puts array
end

def delete(array)
  puts "¿Cuál de estos quieres borrar?"
  puts array
  place = gets.chomp.to_i
  array.delete_at(place)
  puts array
end

def amount(array)
  cantidad = array.count
  puts cantidad
end

def comunas(array)
com = []
  array.each do |persona|
    com.push(persona[:place].downcase)
end

  puts com.uniq
end

def jovenes(array)
  joven = []
  array.each do |persona|
    if persona[:age] > 19 && persona[:age] < 26
    then
    joven.push(persona)
  end
end
  print joven
 end

 def suma(array)
   edades = []
   array.each do |persona|
     edades.push(persona[:age])
   end
   sum = edades.inject(0){|sum, x| sum + x}
   print sum
 end

 def average(array)
   edadprom = []
   array.each do |persona|
     edadprom.push(persona[:age])
   end
   sum = edadprom.inject(0){|sum, x| sum + x}
  promedio = sum / edadprom.length
   print promedio
 end

 def gen(array)
femenino = []
masculino = []
   array.each do |persona|
    if persona[:gender] == 'f'
      then
    femenino.push(persona)
 elsif
    persona[:gender] == 'm'
then
    masculino.push(persona)
   end
 end
 print "Las mujeres son #{femenino}"
 print "Los hombres son #{masculino}"
end


p "press Enter"

option = gets.chomp.to_i

while option != 10

  p "Opción 1: Permite ingresar los datos de una persona: nombre, edad, comuna, genero"
  p "Opción 2: Permite editar los datos de la persona."
  p "Opción 3: Permite eliminar una persona."
  p "Opción 4: Muestra la cantidad de personas ingresadas"
  p "Opción 5: Muestra las comunas de todas las personas"
  p "Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años."
  p "Opción 7: Muestra la suma de las edades de todas las personas."
  p "Opción 8: Muestra el promedio de las edades del grupo"
  p "Opción 9: Muestra dos listas de personas, una por cada género."
  p "Opción 10: salir"

  option = gets.chomp.to_i
puts  case option
  when 1
     nuevo(arreglo)
  when 2
    fix(arreglo)
  when 3
    delete(arreglo)
  when 4
    amount(arreglo)
  when 5
    comunas(arreglo)
  when 6
    jovenes(arreglo)
  when 7
    suma(arreglo)
  when 8
    average(arreglo)
  when 9
    gen(arreglo)
  else
  end
end
