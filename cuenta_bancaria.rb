class Usuario

    attr_accessor :nombre, :cuenta
    
    def initialize(nombre, cuenta = [])
      @nombre = nombre 
      @cuenta = cuenta
    end

    def saldo_total
        sum=0
        
        self.cuenta.each do  |i|
            sum += i.saldo
    
        end
    
        return sum    
            
    end
    

end


class CuentaBancaria

    attr_accessor :banco, :numero_de_cuenta, :saldo


    def initialize(banco, numero_de_cuenta, saldo = 0)

    @saldo = saldo
    @banco = banco
    @numero_de_cuenta = numero_de_cuenta

    end 

    def transferir(monto, otra_cuenta)
        self.saldo -= monto
        otra_cuenta.saldo += monto
    end

end
# Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra
cuenta1 = CuentaBancaria.new('bacno1', 10234568, 5000)
cuenta2 = CuentaBancaria.new('banco2', 12357856, 5000)

cuenta1.transferir(5000, cuenta2)

puts cuenta1.saldo
puts cuenta2.saldo

usuario1 = Usuario.new('carlos', [cuenta1, cuenta2])

puts usuario1.saldo_total