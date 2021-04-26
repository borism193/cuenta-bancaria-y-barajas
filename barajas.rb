require_relative 'cartas'

class Baraja
    attr_accessor :cartas
    def initialize(cartas = [])
      @cartas = cartas
        
      13.times do |i|
    
        self.cartas.push(Carta.new(i + 1, 'C'))
        self.cartas.push(Carta.new(i + 1, 'D'))
        self.cartas.push(Carta.new(i + 1, 'E'))
        self.cartas.push(Carta.new(i + 1, 'T'))
        
        end
    end

    def barajar
        self.cartas.shuffle!
    end 
    
    def quemar
        self.cartas.pop
    end   
    
    def repartir
       self.cartas.sample(5)
    end
end


mazo1 = Baraja.new()




mazo1.barajar

# 52.times do |i|
# puts mazo1.cartas[0+i].numero.to_s + ' ' + mazo1.cartas[0+i].pinta
# end 

mazo1.quemar

mano1 = mazo1.repartir

# 5.times do |i|
# puts mano1[0+i].numero.to_s + ' ' + mano1[0+i].pinta
# end

