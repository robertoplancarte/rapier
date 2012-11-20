def parserr(dir_mem, val)
  return val.to_i if dir_mem[2]=='i'
  return val.to_f if dir_mem[2]=='f'
  return val[1..-2] if dir_mem[2]=='s' && val[0]=='"'
  return val if dir_mem[2]=='s' && val[0]!='"'
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
      if x[0].class == String
        x = x.gsub('\"', '"')
      end
      puts x
      @c_pointer += 1
    when "in"
      @memoria[@cuadruplos[@c_pointer][3]] = parserr(@cuadruplos[@c_pointer][3],$stdin.gets.chomp!)
      @c_pointer += 1
    when "+"
      if @memoria[@cuadruplos[@c_pointer][1]].class == String ||@memoria[@cuadruplos[@c_pointer][2]] == String
        @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]].to_s + @memoria[@cuadruplos[@c_pointer][2]].to_s
      else
        @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]] + @memoria[@cuadruplos[@c_pointer][2]]
      end
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
    when "="
      @memoria[@cuadruplos[@c_pointer][3]] = @memoria[@cuadruplos[@c_pointer][1]]
      @c_pointer += 1
    end
  end
end


@c_pointer = 0
@memoria = {}
programa = Marshal.load(IO.read(ARGV.last))
@constantes = programa[0]
@cuadruplos = programa[1]
loader()
run()
