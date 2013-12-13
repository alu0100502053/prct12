class MatrizDSL

  attr_accessor :name, :questions 

  def initialize(operacion = "", &block)
    @operacion = operacion
    @mats = []
    if block_given?  
      if block.arity == 1
        yield self
      else
        instance_eval &block 
      end
    end
  end

  def operand(mat = [])
    # puts mat[1]
    a = mat[0]
    b = mat[1]
    c = mat[2]
    m = Matriz_densa.new(a,b,c)
    @mats << m
  end

  def to_s
    for i in @dimension 
      puts @matriz[i]
    end
  end

  def run

    if @operacion == "suma" then
      a = @mats[0] + @mats[1]
    elsif @operacion == "resta" then
      a = @mats[0] - @mats[1]
    elsif @operacion == "multiplicacion" then
      a = @mats[0] * @mats[1]
    end
    # b = Mantriz_densa.new(a)
  end
end