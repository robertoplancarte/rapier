#Define acciones de generación de código intermedio

#mete operando a pilaO y lo da de alta en tabla de simbolos '(' es el fondo falso
def agc_1(operando, tipo='ini')
  @pilaO << operando.to_s
end

#mete operador a pOper
def agc_2(operador)
  @pOper << operador
end

#crea cuadruplo de termino y mete resultado a pilaO
def agc_3
  if @pilaO[-2] != '('
    if @pOper[-1] == '*' || @pOper[-1] == '/'
      @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop)
       agc_1('resp')
    end
  end
end

#crea cuadruplo de expr y mete resultado a pilaO
def agc_4
  if @pilaO[-2] != '('
    if @pOper[-1] == '+' || @pOper[-1] == '-'
      @cuadruplos << Cuadruplo.new(@pOper.pop,@pilaO.pop,@pilaO.pop)
      agc_1('resp')
    end
  end
end

#crea cuadruplo de cond y mete resultado a pilaO
def agc_5
  if @pilaO[-2] != '('
    if @pOper[-1] == '>' || @pOper[-1] == '<'
      @cuadruplos << Cuadruplo.new(@pOper.pop,nil,nil)
       agc_1('resp')
    end
  end
end

#crea cuadruplo de asign/dclr y mete resultado a pilaO
def agc_6
  if @pilaO[-2] != '('
    if @pOper[-1] == '='
      @cuadruplos << Cuadruplo.new(@pOper.pop,nil,@pilaO.pop,@pilaO.pop)
       agc_1('resp')
    end
  end
end

#saca fondo falso a @pilaO
def agc_7
  if @pilaO[-2] == '('
    temp = @pilaO.pop
    @pilaO.pop
    agc_1(temp)
  end
end

def agc_8
  @cuadruplos.each do  |c|
    puts c.inspect
  end
end
