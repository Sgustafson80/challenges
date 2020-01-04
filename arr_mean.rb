def mean(arr)
  ((arr.reduce(:+)).to_f / arr.length.to_f).round(2)
end

puts mean([1,2,3,4])