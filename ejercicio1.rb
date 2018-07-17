a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]
# 1. Utilizando *map* generar un nuevo arreglo con cada valor aumentado en 1.
b = a.map {|value| value + 1}
print b
puts " "
# 2. Utilizando *map* generar un nuevo arreglo que contenga todos los valores
# convertidos a *float*.
c = a.map(&:to_f)
print c
puts " "

# 3. Utilizando *map* generar un nuevo arreglo que contenga todos los valores
# convertidos a *string*.
d = a.map(&:to_s)
print d
puts " "
# 4. Utilizando *reject* descartar todos los elementos <u>menores</u> a 5
# en el array.
e = a.reject { |values| values < 5}
print e
puts " "
# 5. Utilizando *select* descartar todos los elementos <u>mayores</u> a 5
# en el array.
f = a.select { |values| values <= 5}
print f
puts " "
# 6. Utilizando *inject* obtener la suma de todos los elementos del array.
sum = a.inject(0){|sum, x| sum + x}
print sum
puts " "
# 7. Utilizando *group_by* agrupar todos los numeros por paridad (si son pares,
# es un grupos, si son impares es otro grupo).
print a.group_by{|x| x.even?}
puts " "

# 8. Utilizando *group_by* agrupar todos los numeros mayores y menores que 6.
print a.group_by{|x| x < 6}
