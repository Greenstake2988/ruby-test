puts "Leyendo datos de temperatura en Celsius desde el archivo..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "EL numero es " + num
print "Resultado: "
puts fahrenheit
