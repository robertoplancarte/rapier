@c_pointer = 0
@memoria = {}
programa = Marshal.load(IO.read(ARGV.last))
@constantes = programa[0]
@cuadruplos = programa[1]

def parserr(dir_mem, val)
  return val.to_i if dir_mem[2]=='i'
  return val.to_f if dir_mem[2]=='f'
  return val.to_s if dir_mem[2]=='s'
  return true if dir_mem[2]=='b' && val == "true"
  return false if dir_mem[2]=='b' && val == "false"
end

def loader
  @constantes.each do |c|
    @memoria[c[0]] = parserr(c[0],c[1])
  end
end

def run
  while @c_pointer < @cuadruplos.size
    case @cuadruplos[@c_pointer][0]
    when "out"
      x = @memoria[@cuadruplos[@c_pointer][3]]
      if x.class == String
        x = x.gsub('\"', '"')
        x = x.gsub('""', '')
        x = x[1..-2]
      end
      puts x
      @c_pointer += 1
    when "+"
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] + @memoria[@cuadruplos[@c_pointer][2]]
      @c_pointer += 1
    when "-"
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] - @memoria[@cuadruplos[@c_pointer][2]]
      @c_pointer += 1
    when "*"
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] * @memoria[@cuadruplos[@c_pointer][2]]
      @c_pointer += 1
    when "/"
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] * @memoria[@cuadruplos[@c_pointer][2]]
      @c_pointer += 1
    when "&"
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] && @memoria[@cuadruplos[@c_pointer][2]]
      @c_pointer += 1
    when "|"
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] || @memoria[@cuadruplos[@c_pointer][2]]
      @c_pointer += 1
    end
  end
end

loader()
run()
