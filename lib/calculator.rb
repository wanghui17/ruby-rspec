class Calculator
  # TODO: impelment so that tests pass
  @@stage = Array.new

  def initialize(start_number)
    @start_num = start_number
  end

  def add(input_num)
    @method = :add
    @@stage.append([@method, input_num])
    sum = @start_num + input_num
  end

  def history(len)
    tmp_arr = Array.new
    (1..len).each do |i|
      tmp_arr.append(@@stage[@@stage.length - i])
    end
    return tmp_arr
  end

end
