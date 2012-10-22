require_relative 'Cuadruplo.rb'
#Define acciones de generación de código intermedio
def agc_1(numOid)
  @pilaO.push numOid.to_s
end

def agc_2(operador)
  @pOper << operador
end

def agc_3
  if @pOper[-1] == '*' || @pOper[-1] == '/'
    @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop)
    @pilaO << 'resp'
  end
end

def agc_4
  if @pOper[-1] == '+' || @pOper[-1] == '-'
    @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop)
    @pilaO << 'resp'
  end
end

def agc_5
  if @pOper[-1] == '>' || @pOper[-1] == '<'
    @cuadruplos << Cuadruplo.new(@pOper.pop,nil,nil)
    @pilaO << 'resp'
  end
end

def agc_6
  @cuadruplos.each do  |c|
    puts c.inspect
  end
end

def agc_7

end

def agc_8

end
