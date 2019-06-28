
def merge_sort(arr)
	return arr if arr.length < 2

	size = arr.length
	# Break into two parts
	left = merge_sort(arr.slice!(0, (arr.length / 2)) )
	right = merge_sort(arr)
	sorted = []
 	
	(left.length + right.length).times do

		if left.empty? && !right.empty?
			sorted << right.shift
		elsif !left.empty? && right.empty?
			sorted << left.shift
		elsif left[0] < right[0]
			sorted << left.shift
		elsif left[0] > right[0]
			sorted << right.shift
		else
			sorted << right.shift
		end

	end

	sorted

end

p merge_sort([1, -4, 0, 10, 42, 3, 15, 12, -24])
