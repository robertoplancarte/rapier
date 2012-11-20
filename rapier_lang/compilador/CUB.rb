def err(c)
  abort "No se puede #{c.operador} un #{c.operando1[1]} con un #{c.operando2[1]}" if c.operando1[1]  && c.operando2[1]
  abort "No se puede asignar un #{c.operando1[1]} a un #{c.respuesta[1]}" if c.operando1[1]  && c.respuesta[1]
end

def res_type(c)
  if @cubo[c.operador]
    if @cubo[c.operador][c.operando1[1]]
      if c.operando2 != []
        if x = @cubo[c.operador][c.operando1[1]][c.operando2[1]]
          return x
        else
          err(c)
        end
      else
        err(c) if @cubo[c.operador][c.respuesta[1]] != c.operando1[1]
      end
    else
      err(c)
    end
  else
    err(c)
  end
end
