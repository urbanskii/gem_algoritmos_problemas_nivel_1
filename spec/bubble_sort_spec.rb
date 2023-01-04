require "BubbleSort"

describe BubbleSort do
  describe ".sort" do
    it "sorts an array of numbers in ascending order" do
      sorter = BubbleSort.new
      expect(sorter.sort([5,4,2,8,25,2,35,1,99,34,22])).to eq([1,2,2,4,5,8,22,25,34,35,99])
    end

    it "does not modify the original array" do
      sorter = BubbleSort.new
      array = [5,4,2,8,25,2,35,1,99,34,22]
      sorter.sort(array)
      expect(array).to eq([5,4,2,8,25,2,35,1,99,34,22])
    end
  end
end