def err(c)
  abort "No se puede #{c.operador} un #{c.operando1[1]} con un #{c.operando2[1]}" if c.operando1  && c.operando2
end

def res_type(c)
  cubo= {'+'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'},'string'=>{'string'=> 'string'}},
       '-'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
       '*'=>{'int'=>{'int'=> 'int','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
       '/'=>{'int'=>{'int'=> 'float','float'=>'float'},'float'=>{'int'=> 'float','float'=>'float'}},
       '&'=>{'boolean'=>{'boolean'=> 'boolean'}},
       '|'=>{'boolean'=>{'boolean'=> 'boolean'}}
       }
  if cubo[c.operador]
    if cubo[c.operador][c.operando1[1]]
      cubo[c.operador][c.operando1[1]][c.operando2[1]]
    else
      err(c)
    end
  else
    err(c)
  end
end
