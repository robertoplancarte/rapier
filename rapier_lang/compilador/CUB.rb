def err(c)
  abort "No se puede #{c.operador} un #{c.operando1[1]} con un #{c.operando2[1]}" if c.operando1[1]  && c.operando2[1]
  abort "No se puede asignar un #{c.operando1[1]} a un #{c.respuesta[1]}" if c.operando1[1]  && c.respuesta[1]
end

def res_type(c)
  cubo= {'+'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'},'string'=>{'string'=> 'string'}},
         '-'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
         '*'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
         '/'=>{'int'=>{'int'=> 'float','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
         '>'=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '<'=>{'int'=>{'int'=> 'boolean','float'=>'boolean'},'float'=>{'int'=> 'boolean','float'=>'boolean'}},
         '&'=>{'boolean'=>{'boolean'=> 'boolean'}},
         '|'=>{'boolean'=>{'boolean'=> 'boolean'}},
         '='=>{'int'=>'int','float'=>'float','string'=>'string','boolean'=>'boolean'}
       }
  if cubo[c.operador]
    if cubo[c.operador][c.operando1[1]]
      if c.operando2 != []
        cubo[c.operador][c.operando1[1]][c.operando2[1]]
      else
        err(c) if cubo[c.operador][c.respuesta[1]] != c.operando1[1]
      end
    else
      err(c)
    end
  else
    err(c)
  end
end
