puts "Leyendo temperatura Celcius del archivo temp.dat ..."
num = File.read("temp.dat")
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "Guardando temperatura Fahrenheit en 'temp.out'"
hf = File.new("temp.out", "w")
hf.puts fahrenheit
hf.close

