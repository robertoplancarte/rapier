#clase cuadruplo que junta strings. los operandos son arreglos de strings donde [0]:nombre, [1]:tipo y [2]:dir_mem
class Cuadruplo
  attr_accessor :operador, :operando1, :operando2, :respuesta
  def initialize(operador, operando2, operando1, respuesta='resp')
    @operador = operador
    @operando1 = operando1
    @operando2 = operando2
    @respuesta = respuesta
  end
  def human_prt
    [operador, operando1[0], operando2[0], respuesta[0]]
  end
  def debug_prt
    "[#{operador}, #{operando1}, #{operando2}, #{respuesta}]"
  end
  def compiler_prt
    if operador == "GoF" || operador == "Go"
      [operador, operando1[2], operando2[2], respuesta]
    else
      [operador, operando1[2], operando2[2], respuesta[2]]
    end
  end
end
