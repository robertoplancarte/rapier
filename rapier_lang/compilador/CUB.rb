  def res_type(cuadruplo)
    type_a = cuadruplo.operando1[1]
    type_b = cuadruplo.operando2[1]
    resp   = cuadruplo.respuesta[1]
    operator = cuadruplo.operador
    case
    when operator == '*' || operator == '+' || operator == '-'
      case
      when type_a == 'int' && type_b == 'int'
        return 'int'
      when type_a == 'int' && type_b == 'float'
        return 'float'
      when type_a == 'float' && type_b == 'int'
        return 'float'
      when type_a == 'float' && type_b == 'float'
        return 'float'
      else
        abort "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when operator == '='
      case
      when type_a == 'int' && resp == 'int'
        return 'int'
      when type_a == 'int' && resp == 'float'
        return 'float'
      when type_a == 'float' && resp == 'int'
        return 'float'
      when type_a == 'float' && resp == 'float'
        return 'float'
      else
        abort "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when operator == '/'
      if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
        return 'float'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when operator == '&' || operator == '|'
      if(type_a == 'boolean')
        if(type_b == 'boolean' || type_b == 'null' )
          return 'boolean'
        end
      elsif(type_b == 'boolean')
        if(type_a == 'boolean' || type_a == 'null' )
          return 'boolean'
        end
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    when (operator == '==' ||  operator == '!=')
      if(type_a != type_b && type_a != 'null' && type_b != 'null')
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      else
        return 'boolean'
      end
    when (operator == '<' || operator == '>' || operator == '<=' || operator == '>=')
      if((type_a == 'int' || type_a == 'float') && (type_b == 'int' || type_b == 'float'))
        return 'boolean'
      else
        raise "Cant apply #{operator} to #{type_a} and #{type_b}"
      end
    end
  end
