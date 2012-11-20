
def load_cuadruplos(dir)
  cuadruplos = []
  cuadruplos = IO.readlines(dir)
  cuadruplos.each_with_index do |c,i|
    cuadruplos[i] = Marshal.load(c)
  end
end

cuadruplos = load_cuadruplos(ARGV.last)
c_pointer = 0

while c_pointer < cuadruplos.size
  case cuadruplos[c_pointer][0]
  when "out"
     x = cuadruplos[c_pointer][3]
     puts x
     c_pointer += 1
  end
end
