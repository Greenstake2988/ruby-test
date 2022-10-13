print "Hola. Porfavor pon el valor en Celsius: "
celsius = gets.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Guardando el resultado en un archivo 'temp.out'"
fh = File.new("temp.out", "w")
fh.puts fahrenheit
fh.close
