def merge_sort(list)
	if list.length <= 1
		list
	else
		mid = (list.length / 2).floor
		left = merge_sort(list[0..mid -1])
		right = merge_sort(list[mid..list.length])
		merge(left,right)
	end
end

def merge(left,right)
	if left.empty?
		right
	elsif right.empty?
		left
	elsif left.first < right.first
		[left.first] + merge(left[1..left.length], right)
	else
		[right.first] + merge(left, right[1..right.length])
	end
end

arr =[33, 76, 15, 20, 89, 68, 1, 91, 40, 10, 53, 90, 31, 85, 73, 94, 11, 75, 30, 66, 19, 60, 55, 72, 38, 4, 42, 34, 58, 43, 95, 13, 77, 25, 32, 23, 52, 64, 22, 7, 98, 81, 84, 67, 87, 100, 8, 26, 83, 63]
 p merge_sort(arr)