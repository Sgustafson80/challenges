require 'rspec/autorun'

def remove_smallest(arr)
  return [] if arr == []

  arr.delete_at(arr.find_index(arr.min)) 
  return arr
end

RSpec.describe "remove_smallest" do
  it 'Removes the smallest value from a sorted array' do
    expect(remove_smallest([1, 2, 3, 4, 5])).to eq([2, 3, 4, 5])
  end

  it 'Removes the smallest value from an unsorted array' do
    expect(remove_smallest([5,3,2,1,4])).to eq([5,3,2,4])
  end

  it "Removes the smallest value once if it repeats" do
    expect(remove_smallest([2, 2, 1, 2, 1])).to eq([2, 2, 2, 1])
  end

  it "Returns an empty array if only one value in array" do
    expect(remove_smallest([3])).to eq([])
  end

  it "Returns an empty array if array is empty" do
    expect(remove_smallest([])).to eq([])
  end

  it "Removes a negative number if it's the smallest value" do
    expect(remove_smallest([2,-1,3,4])).to eq([2,3,4])
  end
end

# Test.assert_equals(remove_smallest([1, 2, 3, 4, 5]), [2, 3, 4, 5])
# Test.assert_equals(remove_smallest([5, 3, 2, 1, 4]), [5, 3, 2, 4])
# Test.assert_equals(remove_smallest([2, 2, 1, 2, 1]), [2, 2, 2, 1], "If there are multiple items with the same value, remove the one with a lower index.")
# Test.assert_equals(remove_smallest([3, 1, 6, 7, 3, 7, 6]), [3, 6, 7, 3, 7, 6])
# Test.assert_equals(remove_smallest([4, 4, 4, 1]), [4, 4, 4])
# Test.assert_equals(remove_smallest([5, 4, 5, 3, 1, 1]), [5, 4, 5, 3, 1])
# Test.assert_equals(remove_smallest([1, 5, 3]), [5, 3])
# Test.assert_equals(remove_smallest([]), [], "If you get an empty array, return an empty array.")
# Test.assert_equals(remove_smallest([6, 2, 5, 4, 8, 6, 3, 2, 7]), [6, 5, 4, 8, 6, 3, 2, 7])
# Test.assert_equals(remove_smallest([3]), [], "Ohhhh! Surprise gotcha!")