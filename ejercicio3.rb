arr = [{name: 'Valentina', age: 23, comuna: 'Ñuñoa', gender: 'Femenino'}, {name: 'Daniel', age: 22, comuna: 'Providencia', gender: 'Masculino'}, {name: 'Armando', age: 30, comuna: 'Macul', gender: 'masculino'}]
options = 0
while options != 10
  puts 'Ingresa una opción del 1 al 9'
  puts '1: Ingresar datos nuevos'
  puts '2: Editar datos existentes'
  puts '3: Eliminar una persona'
  puts '4: Cantidad de personas ingresadas'
  puts '5: Comunas en total'
  puts '6: Personas entre 20 y 25 años'
  puts '7: Suma de edades'
  puts '8: Promedio de las edades'
  puts '9: Cantidad de generos'
  puts '10: Salir'
  options = gets.chomp.to_i
  case options
  when 1
    person = {}
    puts 'Ingresa el nombre del alumno'
    person[:name] = gets.chomp.to_s
    puts 'Ingresa la edad del alumno'
    person[:age] = gets.chomp.to_i
    puts 'Ingresa la comuna del alumno'
    person[:comuna] = gets.chomp.to_s
    puts 'Ingresa el género del alumno'
    person[:gender] = gets.chomp.to_s
    arr.push(person)
    p arr
  when 2
    puts 'Ingresa el nombre del alumno a editar'
    to_edit = gets.chomp.to_s
    hash_to_edit = arr.find { |h| h[:name] == to_edit }
    puts 'Ingresa nuevo nombre'
    new_name = gets.chomp.to_s
    hash_to_edit[:name] = new_name
    puts 'Ingresa la edad nueva'
    new_age = gets.chomp.to_i
    hash_to_edit[:age] = new_age
    puts 'Ingresa nueva comuna'
    new_comuna = gets.chomp.to_s
    hash_to_edit[:comuna] = new_comuna
    puts 'Ingresa nuevo género'
    new_gender = gets.chomp.to_s
    hash_to_edit[:gender] = new_gender
    p arr
  when 3
    puts 'Ingresa el nombre del alumno a eliminar'
    who_delete = gets.chomp.to_s
    arr.delete_if { |h| h[:name] == who_delete }
    p arr
  when 4
    p "La cantidad de personas ingresadas es #{arr.count}"
  when 5
    names_comunas = arr.map { |h| h[:comuna] }
    puts "Las comunas que existen en el sistema son #{names_comunas.map(&:capitalize).uniq}"
  when 6
    arr_of_age = arr.find_all { |h| h[:age] >= 20 && h[:age] <= 25 }
    names_of_age = arr_of_age.map { |h| h[:name] }
    puts "Las personas que tienen entre 20 y 25 años son #{names_of_age}"
  when 7
    sum_of_ages = 0
    arr.map { |h| sum_of_ages += h[:age] }
    p "La suma de las edades de los alumnos es #{sum_of_ages}"
  when 8
    sum_of_ages = 0
    arr.map { |h| sum_of_ages += h[:age] }
    prom_of_ages = (sum_of_ages / arr.count)
    p "El promedio de las edades es #{prom_of_ages}"
  when 9
    fem_group = arr.select { |h| h[:gender].capitalize.start_with?('F') }
    fem_names = fem_group.map { |h| h[:name] }
    masc_group = arr.select { |h| h[:gender].capitalize.start_with?('M') }
    masc_names = masc_group.map { |h| h[:name] }
    puts "Las personas de género femenino son #{fem_names}"
    puts "Las personas de género masculino son #{masc_names}"
  end
end
