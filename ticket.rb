ticket = Object.new

def ticket.date
  "1903-01-02"
end

def ticket.venue
  "Town Hall"
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  "Mark Twain"
end

def ticket.seat
  "Second Balcony, row J, seat 12"
end

def ticket.price
  5.50
end

def ticket.available?
  false
end

def ticket.print_default(*x)
  x.each {|detail| puts "Este ticket es #{detail}" }
end

puts "Este Ticket es para: #{ticket.event}, at #{ticket.venue}.\n" +
"The performer is #{ticket.performer}.\n" +
"The seat is #{ticket.seat}, " +
"and it costs $#{"%.2f." % ticket.price}" +
"Este ticket es #{ticket.print_default("prueba", "otra prubea")} "


print "Que necesitas saber: "
request = gets.chomp

if ticket.respond_to? request
  puts ticket.__send__ request
else
  puts "No informacion disponible"
end

