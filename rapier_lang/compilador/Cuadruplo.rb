class Cuadruplo
  attr_accessor :operador, :operando2, :operando1, :respuesta
  def initialize(operador, operando2, operando1, respuesta='resp')
    @operador = operador
    @operando1 = operando1
    @operando2 = operando2
    @respuesta = respuesta
  end
  def inspect
    puts "[#{@operador}, #{operando1}, #{operando2}, #{@respuesta}]"
  end
end
