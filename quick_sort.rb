class Array
	def quicksort
		return[] if empty?

		#[3, 5, 6, 7, 12, 13, 14, 15, 16, 17, 18, 20, 22, 25, 27, 29, 32, 36, 37, 38, 40, 41, 43, 44, 46, 49, 51, 53, 55, 58, 60, 61, 62, 70, 71, 74, 75, 77, 79, 83, 85, 86, 87, 89, 90, 91, 94, 97, 99, 100]
		pivot = delete_at(rand(size))
		left, right = partition(&pivot.method(:>))

		return *left.quicksort, pivot, *right.quicksort
	end
end


arr= [3, 5, 6, 7, 12, 13, 14, 15, 16, 17, 18, 20, 22, 25, 27, 29, 32, 36, 37, 38, 40, 41, 43, 44, 46, 49, 51, 53, 55, 58, 60, 61, 62, 70, 71, 74, 75, 77, 79, 83, 85, 86, 87, 89, 90, 91, 94, 97, 99, 100]
p arr.quicksort