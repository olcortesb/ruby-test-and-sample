# frozen_string_literal: true

def arg_max(array)
  _i = 0
  return nil if array.empty?

  array.each_with_index { |x, i| _i = i if x >= array[_i] }
  _i
end
