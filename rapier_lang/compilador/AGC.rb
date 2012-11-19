#mete operndo a la pila de operandos
def agc_1(operando, tipo='ini', declaracion=false)
  operando = operando.to_s
  abort("Ya tenias #{operando} declarado") if (@tab_var[operando] && declaracion)
  @tab_var[operando] = [operando,tipo] if !@tab_var[operando]
  tipo = @tab_var[operando][1] if  tipo == 'ini' if @tab_var[operando]
  abort("No tienes #{operando} declarado") if (@tab_var[operando][1]=='ini')
  @pilaO << [operando,tipo]
end

#mete operador a la pila de operadores
def agc_2(operador)
  @pOper << operador
end

#crea cuadruplos para las expreciones matemáticas
def agc_3(operador=[])
  if @pOper[-1] == '('
  puts operador.inspect
    @pOper.pop
  elsif operador == 'out'
    @cuadruplos << Cuadruplo.new('out',[],[],@pilaO.last)
  elsif operador == 'in'
    @cuadruplos << Cuadruplo.new('in',[],[],@pilaO.last)
  elsif operador == '='
    @cuadruplos << Cuadruplo.new(@pOper.pop,[],@pilaO.pop,@pilaO.pop)
    res_type(@cuadruplos.last)
  elsif operador.include? @pOper[-1]
    @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop,[])
    agc_1("t_#{@counter}", res_type(@cuadruplos.last))
    @cuadruplos.last.respuesta = @pilaO[-1]
    @counter +=1
  end
end

#crea cuadruplos para control de flujo
def agc_4(estatuto=nil)
  @pilaS << (@cuadruplos.count )
  @cuadruplos << Cuadruplo.new("GoF",@pilaO.pop,[]) if estatuto == 'if'
  @cuadruplos << Cuadruplo.new("Go",[],[]) if estatuto == 'else'
  @cuadruplos << Cuadruplo.new("GoF",@pilaO.pop,[]) if estatuto == 'while'
end

#actualiza cuadruplos para control de flujo
def agc_5(estatuto)
  @cuadruplos[@pilaS.pop].respuesta = @cuadruplos.count + 1 if estatuto == 'if'
  @cuadruplos[@pilaS.pop].respuesta = @cuadruplos.count if estatuto == 'else'
  @cuadruplos[@pilaS.pop].respuesta = @cuadruplos.count + 1 if estatuto == 'while'
  @cuadruplos << Cuadruplo.new("Go",[],[], @pilaS.pop) if estatuto == 'while'
end

def agc_6
end

def agc_7
end

def agc_8
  @cuadruplos.each_with_index do |c,i|
    puts "#{i} #{c.debug_prt}"
  end
end
