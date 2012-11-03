def agc_1(operando, tipo='ini')
  if operando.to_s != '('
    if !@tab_var[operando.to_s]
      @tab_var[operando.to_s] = []
      @tab_var[operando.to_s] << operando.to_s << tipo
    end
    @pilaO << [operando.to_s,@tab_var[operando.to_s][1]]
  else
    abort("no declarasete la variable #{operando.to_s}") if !@tab_var[operando.to_s]
    @pilaO << [operando.to_s,tipo]
  end
end

def agc_2(operador)
  @pOper << operador
end

def agc_3(operador=[])
  if @pilaO[-2] == '('
    agc_1( @pilaO.pop(2).last)
  elsif operador.include? '='
    @cuadruplos << Cuadruplo.new(@pOper.pop,[],@pilaO.pop,@pilaO.pop)
  elsif operador.include? @pOper[-1]
    @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop,[])
    agc_1("t_#{@counter}", res_type(@cuadruplos.last))
    @cuadruplos.last.respuesta = @pilaO[-1]
    @counter +=1
  end
end

def agc_4
  @cuadruplos << Cuadruplo.new("GoF",@pilaO.pop,[])
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
  @cuadruplos.each do |c|
    puts c.debug_prt
  end
end
