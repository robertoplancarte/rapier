
def load_cuadruplos(cuadruplos)
  cuadruplos.each_with_index do |c,i|
    cuadruplos[i] = Marshal.load(c)
  end
end

c_pointer = 0
memoria = {}
programa = IO.readlines(ARGV.last)
cuadruplos = load_cuadruplos(programa[programa.index("cuadruplos:\n")+1..-1])


while c_pointer < cuadruplos.size
  case cuadruplos[c_pointer][0]
  when "out"
    x = cuadruplos[c_pointer][3]
    if x[0] == "\""
      x = x.gsub('\"', '"')
      x = x[1..-2]
    end
    puts x
    c_pointer += 1
  when "+"
    puts "+"
    c_pointer += 1
  end
end
