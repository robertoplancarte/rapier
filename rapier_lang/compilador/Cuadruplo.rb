class Cuadruplo
  attr_accessor :operador, :operando2, :operando1
  def initialize(operador, operando2, operando1)
    @operador = operador
    @operando1 = operando1
    @operando2 = operando2
  end
  def inspect
    puts "[#{@operador}, #{operando1}, #{operando2}, resp]"
  end
end
