class Ticket
  def initialize(venue)
    @venue = venue
  end

  def date=(date)
    y, m, d = date.split('-')
    if y.to_i < 100
      @date = date
    else
      puts "Favor de subir una fecha en formato 'yyyy-mm-dd'"
    end
  end
end

puts "Ingresa el venue.."
ticket = Ticket.new(gets.chomp)
puts "Ingresa la fecha"
ticket.date = gets.chomp
