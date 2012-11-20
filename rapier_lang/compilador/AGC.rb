
#mete operndo a la pila de operandos
def agc_1(operando, tipo='ini', declaracion=false, constante=false, temporal=false)
  operando = operando.to_s
  abort("Ya tenias #{operando} declarado") if (@tab_var[operando] && declaracion)
  if constante
    @tab_var[operando] = [operando,tipo,"c:#{tipo[0]}:#{@c_c}"] if !@tab_var[operando]
    @c_c += 1
  elsif temporal
    @tab_var[operando] = [operando,tipo,"t:#{tipo[0]}:#{@c_t}"] if !@tab_var[operando]
  else
    @tab_var[operando] = [operando,tipo,"l:#{tipo[0]}:#{@c_l}"] if !@tab_var[operando]
    @c_l += 1
  end
  abort("No tienes #{operando} declarado") if (@tab_var[operando][1]=='ini')
  @pilaO << @tab_var[operando]
end

#mete operador a la pila de operadores
def agc_2(operador)
  @pOper << operador
end

#crea cuadruplos para las expreciones matemáticas
def agc_3(operador=[])
  if @pOper[-1] == '('
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
    agc_1("t_#{@c_t}", res_type(@cuadruplos.last),false,false,true)
    @c_t +=1
    @cuadruplos.last.respuesta = @pilaO[-1]

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
  puts "constantes:"

  puts "cuadruplos:"
  @cuadruplos.each_with_index do |c,i|
    #puts Marshal.dump(c.human_prt)
    puts c.debug_prt
  end
end
