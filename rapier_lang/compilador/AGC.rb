def agc_1(operando, tipo='ini')
  @pilaO << operando.to_s
end

def agc_2(operador)
  @pOper << operador
end

def agc_3(operador=[])
  if @pilaO[-2] == '('
    agc_1( @pilaO.pop(2).last)
  elsif @pOper[-1] == '='
    @cuadruplos << Cuadruplo.new(@pOper.pop,nil,@pilaO.pop,@pilaO.pop)
    agc_1("resp_#{@counter}")
    @counter +=1
  elsif operador.include? @pOper[-1]
    @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop,"resp_#{@counter}")
    agc_1("resp_#{@counter}")
    @counter +=1
  end
end

def agc_4
  @cuadruplos << Cuadruplo.new("GoF",@pilaO.pop,nil)
  @pilaS<<(@cuadruplos.count - 1)
end
def agc_5
  @cuadruplos[@pilaS.pop].respuesta = @cuadruplos.count
end
def agc_6

end
def agc_7

end

def agc_8
  puts @cuadruplos.inspect
end
